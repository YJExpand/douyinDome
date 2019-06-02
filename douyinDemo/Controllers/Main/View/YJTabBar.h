//
//  YJTabBar.h
//  douyinDemo
//
//  Created by My-PC on 1/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger ,TabBarType){
    
    TabBarTypeHome = 100, //首页
    TabBarTypeFocus , //关注
    TabBarTypeNews , //消息
    TabBarTypeMe , //我的
    TabBarTypeAdd , // 上传
};

NS_ASSUME_NONNULL_BEGIN
@class YJTabBar;
@protocol YJTabBarDelegate<NSObject>
@required
- (void)tabbar:(YJTabBar *)tabbar withBtn:(TabBarType )tabbarType;
@end

@interface YJTabBar : UIView

/**
 背景
 */
@property (nonatomic,strong)  UIImageView *tabBarBJView;
- (instancetype)initWithFrame:(CGRect)frame;
@property (nonatomic,assign) NSInteger selectIndex;
@property (nonatomic,weak) id<YJTabBarDelegate>delegate;

@end

NS_ASSUME_NONNULL_END
