//
//  YJHomeApiManage.m
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJHomeApiManage.h"
#import "YJNetworkTool.h"

@implementation YJHomeApiManage

+ (void)getAwemeFeedTaskSuccess:(SuccessBlock)success failed:(FailedBlock)failed
{
    
    //模拟真实数据
    NSDictionary * json = [self getJsonFile:@"YJAwemeFeed"];
    if ([json[@"status_code"] integerValue]==0){
        YJAwemeFeedModel *feedmodel = [YJAwemeFeedModel mj_objectWithKeyValues:json];
        YJLog(@"%@",feedmodel.aweme_list[0].status)
        success(feedmodel);
    }else{
        failed(@"错误");
    }
    
    /* 获取网络数据
     NSDictionary *params = @{
     @"iid":@(37483797410),
     @"device_id":@(35180927264),
     @"os_api":@(18),
     @"app_name":@"aweme",
     @"channel":@"App Store",
     @"idfa":@"9D2547A0-9D80-4553-93C8-458D0E3CF88D",
     @"device_platform":@"iphone",
     @"build_number":@(19007),
     @"vid":@"74B893A2-D97B-40F6-84F4-1980B36A7C74",
     @"openudid":@"a4877114c461677d0242390a046038dca154415b",
     @"device_type":@"iPhone9,1",
     @"app_version":@"1.9.0",
     @"version_code":@"1.9.0",
     @"os_version":@"11.2",
     @"screen_width":@(750),
     @"aid":@(1128),
     @"ac":@"WIFI",
     @"count":@(6),
     @"feed_style":@(0),
     @"filter_warn":@(0),
     @"max_cursor":@(0),
     @"min_cursor":@(0),
     @"pull_type":@(0),
     @"type":@(0),
     @"volume":@"0.79",
     //下面三个会变 @"mas":@"00552b44c02a03fa9dd1fdc7d6553d57019d034e1b09098b234cf8",
     @"as":@"a155aeb400cabb88012741",
     @"ts":@"1531046048",
     };
     
     [SDHttpTool getWithPath:@"aweme/v1/feed/?" params:params success:^(id json) {
     if ([json[@"status_code"] integerValue]==0){
     SDAwemeFeedModel *feedmodel = [SDAwemeFeedModel mj_objectWithKeyValues:json];
     success(feedmodel);
     }else{
     failed(@"请求错误");
     }
     } failure:^(NSError *error) {
     failed(error);
     }];
     */
}

+ (void)getAwemeAppLogTaskSuccess:(SuccessBlock )success failed:(FailedBlock )failed{
    
    NSDictionary *params = @{
                             @"iid":@(37483797410),
                             @"device_id":@(35180927264),
                             @"os_api":@(18),
                             @"app_name":@"aweme",
                             @"channel":@"App Store",
                             @"idfa":@"9D2547A0-9D80-4553-93C8-458D0E3CF88D",
                             @"device_platform":@"iphone",
                             @"build_number":@(19007),
                             @"vid":@"74B893A2-D97B-40F6-84F4-1980B36A7C74",
                             @"openudid":@"a4877114c461677d0242390a046038dca154415b",
                             @"device_type":@"iPhone9,1",
                             @"app_version":@"1.9.0",
                             @"version_code":@"1.9.0",
                             @"os_version":@"11.2",
                             @"screen_width":@(750),
                             @"aid":@(1128),
                             @"ac":@"WIFI",
                             @"count":@(6),
                             @"feed_style":@(0),
                             @"filter_warn":@(0),
                             @"max_cursor":@(0),
                             @"min_cursor":@(0),
                             @"pull_type":@(0),
                             @"type":@(0),
                             @"volume":@"0.79",
                             };
    NSString *url = @"https://log.snssdk.com/service/2/app_log/?";
    [[YJNetworkTool sharedTools] request:POST urlString:url parameters:params finished:^(id json, NSError * error) {
        if (error) {
            failed(error);
            return ;
        }
        success(json);
        YJLog(@"json : %@",json)
    }];
}
@end
