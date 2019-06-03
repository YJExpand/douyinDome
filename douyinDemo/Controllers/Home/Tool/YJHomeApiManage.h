//
//  YJHomeApiManage.h
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJHttpHandler.h"
#import "YJAwemeFeedModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface YJHomeApiManage : YJHttpHandler

/**
 获取推荐视频
 
 @param success 成功
 @param failed 失败
 */
+ (void)getAwemeFeedTaskSuccess:(SuccessBlock )success failed:(FailedBlock )failed;

/**
 获取当前时间
 
 @param success 成功
 @param failed 失败
 */
+ (void)getAwemeAppLogTaskSuccess:(SuccessBlock )success failed:(FailedBlock )failed;

@end

NS_ASSUME_NONNULL_END
