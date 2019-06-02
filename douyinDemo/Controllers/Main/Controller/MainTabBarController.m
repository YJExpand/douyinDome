//
//  MainTabBarController.m
//  douyinDemo
//
//  Created by My-PC on 1/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "MainTabBarController.h"
#import "YJNavigationController.h"
#import "YJTabBar.h"
#import "YJUserInfoVC.h"

@interface MainTabBarController ()<YJTabBarDelegate>
@property(nonatomic,strong) YJTabBar *tabbar;
@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViewControllers];
   
    [self.tabBar addSubview:self.tabbar];
    [[UITabBar appearance]setShadowImage:[UIImage new]];
    [[UITabBar appearance]setBackgroundImage:[UIImage new]];
}


#pragma mark UI
- (void)setupViewControllers
{
    NSMutableArray *arr = [NSMutableArray arrayWithArray:@[@"YJUserInfoVC",@"YJUserInfoVC",@"YJUserInfoVC",@"YJUserInfoVC"]];
    for (int i = 0 ; i<arr.count; i++) {
        NSString *vcName = arr[i];
        UIViewController *vc = [[NSClassFromString(vcName) alloc]init];
        YJNavigationController * navc = [[YJNavigationController alloc]initWithRootViewController:vc];
        [arr replaceObjectAtIndex:i withObject:navc];
    }
    self.viewControllers = arr;
}

#pragma mark - <YJTabBarDelegate>
- (void)tabbar:(YJTabBar *)tabbar withBtn:(TabBarType)tabbarType
{
    if (tabbarType !=TabBarTypeAdd){
        self.selectedIndex = tabbarType-TabBarTypeHome;
        if (tabbarType != TabBarTypeHome){
            [self setTabbarAlpha:NO];
        }
        return;
    }
    /// 点击了中间的相机
    
}

#pragma mark - Other
- (void)setTabbarAlpha:(BOOL )isAlpha{
    
    if(isAlpha){
        self.tabbar.tabBarBJView.alpha = 0;
    }else{
        self.tabbar.tabBarBJView.alpha = 1;
    }
}

#pragma mark getting
- (YJTabBar *)tabbar
{
    if (!_tabbar) {
        _tabbar = [[YJTabBar alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kTabBarHeight)];
        _tabbar.delegate = self;
    }
    return _tabbar;
}
@end
