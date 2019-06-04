//
//  YJShortVideoModel.h
//  douyinDemo
//
//  Created by My-PC on 4/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJBaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface YJShortVideoModel : YJBaseModel

@property (nonatomic,copy)  NSString *videoUrl;
@property (nonatomic,copy)  NSString *imageUrl;
@property (nonatomic,assign)  NSInteger likeNum;
@property (nonatomic,assign)  NSInteger commentNum;
@property (nonatomic,assign)  NSInteger shareNum;
@end

NS_ASSUME_NONNULL_END
