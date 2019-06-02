//
//  YJApiUrlConst.m
//  douyinDemo
//
//  Created by My-PC on 1/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJApiUrlConst.h"

/** 请求地址*/
NSString *const BaseUrl = @"http://116.62.9.17:8080/douyin/";

/** 创建访客用户接口*/
NSString *const CreateVisitorPath = @"visitor/create";

/** 根据用户id获取用户信息*/
NSString *const FindUserByUidPath = @"user";

/** 获取用户发布的短视频列表数据*/
NSString *const FindAwemePostByPagePath = @"aweme/post";

/** 获取用户喜欢的短视频列表数据*/
NSString *const FindAwemeFavoriteByPagePath = @"aweme/favorite";
