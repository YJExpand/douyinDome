//
//  YJHomeBtnView.h
//  douyinDemo
//
//  Created by My-PC on 4/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YJHomeBtnItem.h"
#import "YJAweme.h"
@class YJHomeMusicView,YJShortVideoModel;
NS_ASSUME_NONNULL_BEGIN

@interface YJHomeBtnView : UIView
@property (nonatomic,strong) YJHomeMusicView *musicView;
@property(nonatomic,weak) YJHomeDesView *desView;
@property (nonatomic,strong) YJHomeBtnItem *shareItem;
@property (nonatomic,strong) YJHomeBtnItem *commentItem;
@property (nonatomic,strong) YJHomeBtnItem *likeItem;
@property (nonatomic,strong) YJHomeBtnItem *headItem;
@property (nonatomic,strong) UIImageView *playImageView;

- (void)setValueWithModel:(YJShortVideoModel *)shortVideoModel;

- (void)setValueWithAwemeModel:(YJAweme *)aweme;
@end

NS_ASSUME_NONNULL_END
