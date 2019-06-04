//
//  YJHomeListTableView.m
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJHomeListTableView.h"
#import <ZFPlayer/ZFPlayer.h>

@interface YJHomeListTableView()

@end
@implementation YJHomeListTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.dataSource = self;
        self.delegate = self;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.pagingEnabled = YES;
        self.scrollsToTop = YES;
        self.estimatedSectionHeaderHeight = 0;
        self.estimatedSectionFooterHeight = 0;
        self.estimatedRowHeight = 0;
        self.opaque = YES;
        [self setupUI];
        
    }
    return self;
}

#pragma mark - UI
- (void)setupUI
{
    
}

#pragma mark - <UITabelViewDataSource>
- (NSInteger)numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    YJLog(@"来了 ： %zd",self.dataArray.count)
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YJHomeListTableViewCell *cell = [YJHomeListTableViewCell cellWithTableView:self];
    YJAweme *aweme = self.dataArray[indexPath.row];
    [cell setValueAweme:aweme];
    return cell;
}


#pragma mark - <UITabelViewDelegate>
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return kScreenH;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger row = scrollView.contentOffset.y / kScreenH;
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
    self.zf_scrollViewDidStopScrollCallback(indexPath);
}

@end
