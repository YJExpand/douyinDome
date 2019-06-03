//
//  YJHttpHandler.h
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YJHttpHandler : NSObject

/**
 *  Handler处理完成后调用的Block
 */
typedef void (^CompleteBlock)(void);

/**
 *  Handler处理成功时调用的Block
 */
typedef void (^SuccessBlock)(id obj);

/**
 *  Handler处理失败时调用的Block
 */
typedef void (^FailedBlock)(id obj);


/**
 假装请求网络数据
 
 @param jsonName json
 @return 返回json字典
 */
+ (NSDictionary *)getJsonFile:(NSString *)jsonName;

@end

NS_ASSUME_NONNULL_END
