//
//  YJVideo.h
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YJAvatarLarger.h"

NS_ASSUME_NONNULL_BEGIN

@interface YJBitRate : NSObject

@property (nonatomic, assign) NSInteger bitRate;
@property (nonatomic, strong) NSString * gearName;
@property (nonatomic, assign) NSInteger qualityType;
@end


@interface YJVideo : NSObject
@property (nonatomic, strong) NSArray <YJBitRate *>* bit_rate;
@property (nonatomic, strong) YJAvatarLarger * cover;
@property (nonatomic, strong) YJAvatarLarger * download_addr;
@property (nonatomic, assign) NSInteger duration;
@property (nonatomic, strong) YJAvatarLarger * dynamic_cover;
@property (nonatomic, assign) BOOL hasWatermark;
@property (nonatomic, assign) NSInteger height;
@property (nonatomic, strong) YJAvatarLarger * origin_cover;
@property (nonatomic, strong) YJAvatarLarger * play_addr;
@property (nonatomic, strong) YJAvatarLarger * play_addr_lowbr;
@property (nonatomic, strong) NSString * ratio;
@property (nonatomic, assign) NSInteger width;
@end

NS_ASSUME_NONNULL_END
