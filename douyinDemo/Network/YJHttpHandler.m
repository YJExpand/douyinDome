//
//  YJHttpHandler.m
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJHttpHandler.h"

@implementation YJHttpHandler

/**
 假装请求网络数据
 
 @param jsonName json
 @return 返回json字典
 */
+ (NSDictionary *)getJsonFile:(NSString *)jsonName{
    
    NSString *configPath = [[NSBundle mainBundle] pathForResource:jsonName ofType:@"json"];
    NSData *configData = [NSData dataWithContentsOfFile:configPath];
    NSError *error;
    NSDictionary *responseObject = [NSJSONSerialization JSONObjectWithData:configData options:NSJSONReadingMutableContainers error:&error];
    if(error){
        YJLog(@"json解析失败:%@",error)
    }
    return responseObject;
}
@end
