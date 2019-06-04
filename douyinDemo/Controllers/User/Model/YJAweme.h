//
//  YJAweme.h
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YJAvatarLarger.h"
#import "YJUser.h"
#import "YJVideo.h"
#import "YJMusic.h"

NS_ASSUME_NONNULL_BEGIN

@interface YJStreamUrl : NSObject
@property (nonatomic, strong) NSString * idField;
@property (nonatomic, strong) NSString * rtmpPullUrl;
@end

@interface YJRoom : NSObject
@property (nonatomic, strong) NSString * citycode;
@property (nonatomic, assign) CGFloat latitude;
@property (nonatomic, assign) CGFloat longitude;
@property (nonatomic, assign) NSInteger userCount;
@end


@interface ShareInfo : NSObject

@property (nonatomic, assign) NSInteger boolPersist;
@property (nonatomic, strong) NSString * goodsRecUrl;
@property (nonatomic, strong) NSString * manageGoodsUrl;
@property (nonatomic, strong) NSString * shareDesc;
@property (nonatomic, strong) NSString * shareQuote;
@property (nonatomic, strong) NSString * shareSignatureDesc;
@property (nonatomic, strong) NSString * shareSignatureUrl;
@property (nonatomic, strong) NSString * shareTitle;
@property (nonatomic, strong) NSString * shareUrl;
@property (nonatomic, strong) NSString * shareWeiboDesc;
@end

@interface YJAddressInfo : NSObject

@property (nonatomic, strong) NSString * address;
@property (nonatomic, strong) NSString * city;
@property (nonatomic, strong) NSString * district;
@property (nonatomic, strong) NSString * province;
@property (nonatomic, strong) NSString * simpleAddr;
@end

@interface YJPoiInfo : NSObject

@property (nonatomic, strong) YJAddressInfo * addressInfo;
@property (nonatomic, strong) YJAvatarLarger * coverHd;
@property (nonatomic, strong) YJAvatarLarger * coverLarge;
@property (nonatomic, strong) YJAvatarLarger * coverMedium;
@property (nonatomic, strong) YJAvatarLarger * coverThumb;
@property (nonatomic, strong) NSString * distance;
@property (nonatomic, assign) NSInteger iconType;
@property (nonatomic, assign) NSInteger itemCount;
@property (nonatomic, strong) NSString * poiId;
@property (nonatomic, assign) CGFloat poiLatitude;
@property (nonatomic, assign) CGFloat poiLongitude;
@property (nonatomic, strong) NSString * poiName;
@property (nonatomic, strong) ShareInfo * shareInfo;
@property (nonatomic, strong) NSString * typeCode;
@property (nonatomic, assign) NSInteger userCount;
@end


@interface YJVideoLabels :NSObject
@property (nonatomic, assign) NSInteger labelType;
@property (nonatomic, strong) YJAvatarLarger *labelUrl;
@end

@interface YJTextExtra :NSObject
@property (nonatomic, assign) NSInteger start;
@property (nonatomic, assign) NSInteger end;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, strong) NSString * userId;
@end


@interface YJChaList : NSObject
@property (nonatomic, strong) YJUser * author;
@property (nonatomic, strong) NSString * chaName;
@property (nonatomic, strong) NSString * cid;
@property (nonatomic, strong) NSString * desc;
@property (nonatomic, assign) NSInteger isChallenge;
@property (nonatomic, assign) BOOL isPgcshow;
@property (nonatomic, strong) NSString * schema;
@property (nonatomic, assign) NSInteger subType;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, assign) NSInteger userCount;
@end


@interface YJStatu : NSObject
@property (nonatomic, assign) BOOL allowComment;
@property (nonatomic, assign) BOOL allowShare;
@property (nonatomic, assign) BOOL inReviewing;
@property (nonatomic, assign) BOOL isDelete;
@property (nonatomic, assign) BOOL isPrivate;
@property (nonatomic, assign) NSInteger privateStatus;
@property (nonatomic, assign) BOOL withFusionGoods;
@property (nonatomic, assign) BOOL withGoods;
@end

@interface YJStatistic : NSObject

@property (nonatomic, strong) NSString * awemeId;
@property (nonatomic, assign) NSInteger comment_count;
@property (nonatomic, assign) NSInteger digg_count;
@property (nonatomic, assign) NSInteger play_count;
@property (nonatomic, assign) NSInteger share_count;
@end

@interface YJDescendant : NSObject

@property (nonatomic, strong) NSString * notifyMsg;
@property (nonatomic, strong) NSArray <NSString *>* platforms;
@end


@interface YJRiskInfo : NSObject
@property (nonatomic, strong) NSString * content;
@property (nonatomic, assign) BOOL riskSink;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, assign) BOOL warn;
@end
@interface YJAweme : NSObject
@property (nonatomic, strong) YJUser * author;
@property (nonatomic, assign) NSInteger authorUserId;
@property (nonatomic, strong) NSString * awemeId;
@property (nonatomic, assign) NSInteger awemeType;///0视频.51合拍.101直播
@property (nonatomic, assign) NSInteger bodydanceScore;
@property (nonatomic, strong) NSArray <YJChaList *>* chaList;
@property (nonatomic, assign) BOOL cmtSwt;
@property (nonatomic, assign) BOOL collectStat;
@property (nonatomic, assign) NSInteger createTime;
@property (nonatomic, strong) NSString * desc;
@property (nonatomic, strong) YJDescendant * descendants;
@property (nonatomic, strong) NSArray * geofencing;
@property (nonatomic, assign) BOOL isAds;
@property (nonatomic, assign) NSInteger isHashTag;
@property (nonatomic, assign) BOOL isPgcshow;
@property (nonatomic, assign) BOOL isRelieve;
@property (nonatomic, assign) NSInteger isTop;
@property (nonatomic, assign) BOOL isVr;
@property (nonatomic, assign) NSInteger itemCommentSettings;
@property (nonatomic, strong) YJAvatarLarger * labelFriend;
@property (nonatomic, strong) YJAvatarLarger * labelPrivate;
@property (nonatomic, strong) YJAvatarLarger * labelTop;
@property (nonatomic, strong) YJMusic * music;
@property (nonatomic, strong) YJPoiInfo * poiInfo;
@property (nonatomic, assign) NSInteger rate;
@property (nonatomic, strong) NSString * region;
@property (nonatomic, strong) YJRiskInfo * riskInfos;
@property (nonatomic, strong) ShareInfo * shareInfo;
@property (nonatomic, strong) YJRoom * room;
@property (nonatomic, strong) YJStreamUrl * streamUrl;
@property (nonatomic, strong) NSString * distance;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * shareUrl;
@property (nonatomic, strong) NSString * sortLabel;
@property (nonatomic, strong) YJStatistic * statistics;
@property (nonatomic, strong) YJStatu * status;
@property (nonatomic, strong) NSArray <YJTextExtra *>* textExtra;
@property (nonatomic, assign) NSInteger userDigged;
@property (nonatomic, strong) YJVideo * video;
@property (nonatomic, strong) NSArray <YJVideoLabels *>* videoLabels;
@property (nonatomic, strong) NSArray * videoText;
@property (nonatomic, assign) NSInteger vrType;

#pragma mark - my

@end

NS_ASSUME_NONNULL_END
