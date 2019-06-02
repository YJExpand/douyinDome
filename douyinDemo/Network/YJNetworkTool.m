//
//  YJNetworkTool.m
//  douyinDemo
//
//  Created by My-PC on 1/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJNetworkTool.h"

@protocol HTTPProxy <NSObject>
@optional
- (NSURLSessionDataTask *)dataTaskWithHTTPMethod:(NSString *)method
                                       URLString:(NSString *)URLString
                                      parameters:(id)parameters
                                  uploadProgress:(nullable void (^)(NSProgress *uploadProgress)) uploadProgress
                                downloadProgress:(nullable void (^)(NSProgress *downloadProgress)) downloadProgress
                                         success:(void (^)(NSURLSessionDataTask *, id))success
                                         failure:(void (^)(NSURLSessionDataTask *, NSError *))failure;

@end

@interface YJNetworkTool ()<HTTPProxy>
/// 错误信息码
@property (nonatomic,strong) NSDictionary *code;
@end

@implementation YJNetworkTool

+ (instancetype)sharedTools {
    static YJNetworkTool *tools = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        tools = [[self alloc] init];
        
        tools.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain", nil];
    });
    return tools;
}

- (void)request:(HTTPMethod)method
      urlString:(NSString *)urlString
     parameters:(id)parameters
       finished:(void (^)(id, NSError *))finished
{
    
    void(^successCallback)(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) = ^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        finished(responseObject,nil);
    };
    
    void(^failureCallBack)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) = ^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //        return ;
        finished(nil,error);
    };
    
    if (method == GET) {
        [self GET:urlString parameters:parameters progress:nil success:successCallback failure:failureCallBack];
    } else {
        [self POST:urlString parameters:parameters progress:nil success:successCallback failure:failureCallBack];
    }
}

@end
