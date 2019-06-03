//
//  YJMacros.h
//  douyinDemo
//
//  Created by My-PC on 2/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#ifndef YJMacros_h
#define YJMacros_h

/****************手机适配*****************/
#define kScreenH [UIScreen mainScreen].bounds.size.height //屏幕高度
#define kScreenW [UIScreen mainScreen].bounds.size.width //屏幕宽度
#define YJ_SizeH(h) kScreenH * ((h) / 667.0)
#define YJ_SizeW(w) kScreenW * ((w) / 375.0)
/**
 896.000000    414.000000 xs max
 812.000000    375.000000 xs
 896.000000    414.000000 xr
 812           375        x
 */
#define iPhoneX_future  ((kScreenH == 812.0 && kScreenW == 375.0)||(kScreenH == 896.0 && kScreenW == 414.0))

// 导航栏高度
#define kNaviHeight (iPhoneX_future ? 88:64)
///底部安全距离
#define kBottomSafeArea (iPhoneX_future ? 34:0)
/// 状态栏高度
#define kStatusbarHeight (iPhoneX_future ? 44:20)
///导航栏控件高度
#define kBarItemHeight 44.0f
///底部标签栏高度
#define kTabBarHeight (iPhoneX_future ? 49.f + kBottomSafeArea : 49.f)

//快速设置UIImage
#define YJImageWithStr(name) [UIImage imageNamed:name]

/** 弱引用*/
#define WeakSelf(weakSelf) __weak typeof(self)  weakSelf = self;

/****************定义常规属性*****************/
/** 设置字体*/
#define YJsysFontOfSize(size) [UIFont systemFontOfSize:size]
/** 设置粗体*/
#define YJboldFontOfSize(size) [UIFont boldSystemFontOfSize:size]
/** 用户偏好*/
#define YJUserDefaults [NSUserDefaults standardUserDefaults]


///NSLog
#ifdef DEBUG
#define YJLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#define YJLog(...)
#endif


#endif /* YJMacros_h */
