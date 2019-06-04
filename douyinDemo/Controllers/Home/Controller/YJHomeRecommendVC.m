//
//  YJHomeRecommendVC.m
//  douyinDemo
//
//  Created by My-PC on 2/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJHomeRecommendVC.h"
#import "YJHomeListTableView.h"

#import "YJHomeApiManage.h"

#import <ZFPlayer/ZFPlayer.h>
#import <ZFPlayer/ZFAVPlayerManager.h>
#import <ZFPlayer/ZFPlayerControlView.h>

@interface YJHomeRecommendVC ()
@property(nonatomic,strong) YJHomeListTableView *tableView;

@property (nonatomic, strong) NSMutableArray *dataSource;
@property (nonatomic, strong) NSMutableArray *urls;
@property (nonatomic, strong) ZFPlayerControlView *controlView;
@property (nonatomic, strong) ZFPlayerController *player;

@end

@implementation YJHomeRecommendVC

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.player.statusBarHidden = NO;
    [self.player.currentPlayerManager pause];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.player.statusBarHidden = YES;
    [self.player.currentPlayerManager play];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    
    [self loadData];
}

#pragma mark - UI
- (void)setupUI
{
    [self.view addSubview:self.tableView];
    
    ZFAVPlayerManager *playerManager = [[ZFAVPlayerManager alloc] init];
    /// player,tag值必须在cell里设置
    self.player = [ZFPlayerController playerWithScrollView:self.tableView playerManager:playerManager containerViewTag:100];
    self.player.assetURLs = self.urls;
    self.player.disableGestureTypes = ZFPlayerDisableGestureTypesDoubleTap | ZFPlayerDisableGestureTypesPan | ZFPlayerDisableGestureTypesPinch;
    self.player.controlView = self.controlView;
    //    self.player.allowOrentitaionRotation = NO;
    self.player.WWANAutoPlay = YES;
    WeakSelf(ws);
    self.player.playerDidToEnd = ^(id  _Nonnull asset) {
        [ws.player.currentPlayerManager replay];
    };
}

#pragma mark - loadData
- (void)loadData
{
    self.urls = [NSMutableArray array];
    [YJHomeApiManage getAwemeFeedTaskSuccess:^(id obj) {
        YJAwemeFeedModel *feedModel = (YJAwemeFeedModel *)obj;
        self.dataSource = [NSMutableArray arrayWithArray:feedModel.aweme_list];
        
        for (YJAweme *aweme in self.dataSource){
            NSString *URLString = [[aweme.video.play_addr.url_list firstObject] stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
            NSURL *url = [NSURL URLWithString:URLString];
            [self.urls addObject:url];
        }
        
        self.player.assetURLs = self.urls;
        [self refreshTableView];
        
    } failed:^(id obj) {
        YJLog(@"obj%@",obj);
    }];
}

- (void)loadMoreData
{
    [YJHomeApiManage getAwemeFeedTaskSuccess:^(id  _Nonnull obj) {
        YJAwemeFeedModel *feedModel = (YJAwemeFeedModel *)obj;
        [self.dataSource addObjectsFromArray:feedModel.aweme_list];
        
        for (YJAweme *aweme in feedModel.aweme_list){
            NSString *URLString = [[aweme.video.play_addr.url_list firstObject] stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
            NSURL *url = [NSURL URLWithString:URLString];
            [self.urls addObject:url];
        }
        
        self.player.assetURLs = self.urls;
        self.tableView.dataArray = self.dataSource;
        [self.tableView reloadData];
    } failed:^(id  _Nonnull obj) {
        YJLog(@"error :%@",obj)
    }];
}
#pragma mark - action
- (void)refreshTableView{
    
    self.tableView.dataArray = self.dataSource;
    [self.tableView reloadData];
    /// 找到可以播放的视频并播放
    WeakSelf(ws);
    [self.tableView zf_filterShouldPlayCellWhileScrolled:^(NSIndexPath *indexPath) {
        
        [ws playTheVideoAtIndexPath:indexPath scrollToTop:NO];
    }];
}

/// play the video
- (void)playTheVideoAtIndexPath:(NSIndexPath *)indexPath scrollToTop:(BOOL)scrollToTop
{
    
    YJAweme *data = self.dataSource[indexPath.row];
    
    if ([self.player.assetURL.absoluteString isEqualToString:[data.video.play_addr.url_list firstObject]]) {
        return;
    }
    [self.player.currentPlayerManager playerPrepareToPlay];
    [self.player playTheIndexPath:indexPath scrollToTop:scrollToTop];
    
    //    [self.controlView resetControlView];
    
    //    [self.controlView showCoverViewWithUrl:[data.video.originCover.urlList firstObject]];
    [self.controlView showTitle:data.title coverURLString:[data.video.origin_cover.url_list firstObject] fullScreenMode:ZFFullScreenModeLandscape];
    
}


#pragma mark - getting
- (YJHomeListTableView *)tableView
{
    if (!_tableView) {
        _tableView = [[YJHomeListTableView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kScreenH) style:UITableViewStylePlain];
        
        WeakSelf(ws);
        _tableView.zf_scrollViewDidStopScrollCallback = ^(NSIndexPath * _Nonnull indexPath) {
            if (indexPath.row == ws.dataSource.count-1) {
                /// 加载下一页数据
                [ws loadMoreData];
                
            }
            [ws playTheVideoAtIndexPath:indexPath scrollToTop:NO];
        };
    }
    return _tableView;
}

- (NSMutableArray *)dataSource
{
    if (!_dataSource) {
        _dataSource = [NSMutableArray array];
    }
    return _dataSource;
}

- (NSMutableArray *)urls
{
    if (!_urls) {
        _urls = [NSMutableArray array];
    }
    return _urls;
}

- (ZFPlayerControlView *)controlView
{
    if (!_controlView) {
        _controlView = [ZFPlayerControlView new];
    }
    return _controlView;
}

@end
