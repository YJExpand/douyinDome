//
//  YJColorHeader.h
//  douyinDemo
//
//  Created by My-PC on 1/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

/// 根据十六进制获取颜色
#define YJColorHex(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

/// 根据十六进制获取颜色  a:透明度
#define YJColorHexAlpha(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)]

/// rgb
#define YJRGBColor(r,g,b) [UIColor colorWithRed:(r) / 255.0 green:(g) / 255.0 blue:(b) / 255.0 alpha:1]

/// rgb  a:透明度
#define YJRGBAlphaColor(a,r,g,b) [UIColor colorWithRed:(r) / 255.0 green:(g) / 255.0 blue:(b) / 255.0 alpha:a]

/// tabbar背景颜色
#define YJColor_TabBG YJRGBColor(19, 21, 24)

/// 背景颜色
#define YJColor_BG YJRGBColor(17, 19, 26)

/// 普通颜色
#define YJColor_Normal YJRGBColor(144, 143, 149)

/// 选中颜色
#define YJColor_Select YJRGBColor(251, 251, 251)

/// 导航栏背景色
#define YJColor_NavigationBarBG YJColorHex(0x2B2841)

///随机颜色
#define YJRandomColor [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1.0f]
