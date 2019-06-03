//
//  YJBaseModel.h
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YJExtra : NSObject
@property (nonatomic, copy) NSString * logid;
@property (nonatomic, assign) NSInteger now;
@property (nonatomic, strong) NSArray * fatalItemIds;
@end

@interface YJBaseModel : NSObject
@property (nonatomic, strong) YJExtra * extra;
@property (nonatomic, assign) NSInteger statusCode;
@property (nonatomic, assign) NSInteger hasMore;
@property (nonatomic, assign) NSInteger maxCursor;
@property (nonatomic, assign) NSInteger minCursor;
@end

NS_ASSUME_NONNULL_END
