//
//  YJBaseVC.m
//  douyinDemo
//
//  Created by My-PC on 2/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJBaseVC.h"

@interface YJBaseVC ()

@end

@implementation YJBaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}

#pragma mark getting
- (UIView *)nav
{
    if (!_nav) {
        UIView *nav = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenW, kNaviHeight)];
        nav.backgroundColor = [UIColor clearColor];
        [self.view addSubview:nav];
        _nav = nav;
    }
    return _nav;
}
@end
