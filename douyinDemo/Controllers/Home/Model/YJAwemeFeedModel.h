//
//  YJAwemeFeedModel.h
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJBaseModel.h"
#import "YJAweme.h"
NS_ASSUME_NONNULL_BEGIN

@interface YJAwemeFeedModel : YJBaseModel
@property (nonatomic, strong) NSArray <YJAweme *>* aweme_list;
@property (nonatomic, assign) NSInteger refreshClear;
@property (nonatomic, strong) NSString * rid;
@property (nonatomic, assign) NSInteger homeModel;
@end

NS_ASSUME_NONNULL_END
