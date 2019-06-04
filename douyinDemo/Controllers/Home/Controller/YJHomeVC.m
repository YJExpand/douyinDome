//
//  YJHomeVC.m
//  douyinDemo
//
//  Created by My-PC on 2/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJHomeVC.h"
#import "YJHomeRecommendVC.h"
#import "MainTabBarController.h"

@interface YJHomeVC ()<UIScrollViewDelegate>
/// 推荐vc
@property(nonatomic,strong) YJHomeRecommendVC *recommendVC;

@property (nonatomic,strong) UIScrollView * mainScrollView;
@end

@implementation YJHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupNav];
    
    [self setupUI];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    MainTabBarController *tabbarVC = (MainTabBarController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    [tabbarVC setTabbarAlpha:YES];
}
#pragma mark - UI
- (void)setupNav
{
    /// 1.0.0 只显示推荐，后续添加关注
    UILabel *titleLB = [[UILabel alloc] initWithText:@"推荐" textColor:YJColor_Theme_White fontSize:15];
    [self.nav addSubview:titleLB];
    [titleLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.centerX.mas_equalTo(self.nav);
        make.height.mas_equalTo(kBarItemHeight);
    }];
    
}

- (void)setupUI
{
    [self.view addSubview:self.mainScrollView];
    
    [self.view sendSubviewToBack:self.mainScrollView];
    
    [self.mainScrollView addSubview:self.recommendVC.view];
}

#pragma mark - getting
- (UIScrollView *)mainScrollView
{
    if (!_mainScrollView) {
        UIScrollView *mainScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kScreenH)];
        mainScrollView.delegate = self;
        mainScrollView.contentSize = CGSizeMake(kScreenW * 2, kScreenH);
        mainScrollView.showsHorizontalScrollIndicator = NO;
        mainScrollView.showsVerticalScrollIndicator = NO;
        mainScrollView.pagingEnabled = YES;
        mainScrollView.bounces =NO;
        mainScrollView.scrollEnabled = NO;
        if (@available(iOS 11.0, *)) {
            mainScrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
        _mainScrollView = mainScrollView;
    }
    return _mainScrollView;
}

- (YJHomeRecommendVC *)recommendVC
{
    if (!_recommendVC) {
        _recommendVC = [[YJHomeRecommendVC alloc]init];
        [self addChildViewController:_recommendVC];
        _recommendVC.view.frame =CGRectMake(0,0 , kScreenW, kScreenH);
    }
    return _recommendVC;
}
@end
