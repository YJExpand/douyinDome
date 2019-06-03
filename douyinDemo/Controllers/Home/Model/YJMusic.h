//
//  YJMusic.h
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YJAvatarLarger.h"

NS_ASSUME_NONNULL_BEGIN

@interface YJMusic : NSObject
@property (nonatomic, strong) YJAvatarLarger * audioTrack;
@property (nonatomic, strong) NSString * author;
@property (nonatomic, assign) BOOL authorDeleted;
@property (nonatomic, strong) YJAvatarLarger * coverHd;
@property (nonatomic, strong) YJAvatarLarger * coverLarge;
@property (nonatomic, strong) YJAvatarLarger * coverMedium;
@property (nonatomic, strong) YJAvatarLarger * coverThumb;
@property (nonatomic, assign) NSInteger duration;
@property (nonatomic, strong) YJAvatarLarger * effectsData;
@property (nonatomic, strong) NSString * extra;
@property (nonatomic, assign) double idField;
@property (nonatomic, strong) NSString * idStr;
@property (nonatomic, assign) BOOL isDelVideo;
@property (nonatomic, assign) BOOL isOriginal;
@property (nonatomic, assign) BOOL isRestricted;
@property (nonatomic, assign) BOOL isVideoSelfSee;
@property (nonatomic, strong) NSString * mid;
@property (nonatomic, strong) NSString * offlineDesc;
@property (nonatomic, strong) NSString * ownerHandle;
@property (nonatomic, strong) NSString * ownerId;
@property (nonatomic, strong) NSString * ownerNickname;
@property (nonatomic, strong) YJAvatarLarger * playUrl;
@property (nonatomic, assign) BOOL redirect;
@property (nonatomic, strong) NSString * schemaUrl;
@property (nonatomic, assign) NSInteger sourcePlatform;
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, assign) NSInteger userCount;
@end

NS_ASSUME_NONNULL_END
