//
//  YJApiUrlConst.h
//  douyinDemo
//
//  Created by My-PC on 1/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 请求地址*/
UIKIT_EXTERN NSString *const BaseUrl;

/** 创建访客用户接口*/
UIKIT_EXTERN NSString *const URL_CreateVisitorPath;

/** 根据用户id获取用户信息*/
UIKIT_EXTERN NSString *const URL_FindUserByUidPath;

/** 获取用户发布的短视频列表数据*/
UIKIT_EXTERN NSString *const URL_FindAwemePostByPagePath;

/** 获取用户喜欢的短视频列表数据*/
UIKIT_EXTERN NSString *const URL_FindAwemeFavoriteByPagePath;
