//
//  YJNetworkTool.h
//  douyinDemo
//
//  Created by My-PC on 1/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "AFHTTPSessionManager.h"
#import "YJApiUrlConst.h"

/// URL 
#define YJ_URL(n) [BaseUrl stringByAppendingString:n]

NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
    GET,
    POST,
} HTTPMethod;


@interface YJNetworkTool : AFHTTPSessionManager

+ (instancetype) sharedTools;

- (void)request:(HTTPMethod)method
      urlString:(NSString *)urlString
     parameters:(id)parameters
       finished:(void(^)(id ,NSError *))finished;

@end

NS_ASSUME_NONNULL_END
