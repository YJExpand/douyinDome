//
//  YJHomeBtnItem.h
//  douyinDemo
//
//  Created by My-PC on 4/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import <UIKit/UIKit.h>

#define HomeBtnItemWidth 70
#define HomeBtnItemHeight 70
#define HomeHeadImageViewWidth 50
#define HomeHandleBtnWidth 42

NS_ASSUME_NONNULL_BEGIN

/** 背景音乐 */
@interface YJHomeMusicView :UIView

@property (nonatomic,strong)  UIButton *musicImageBtn;
@property(nonatomic,weak) UILabel *musicNameLB;
@end

/** 描述信息*/
@interface YJHomeDesView : UIView
@property(nonatomic,weak) UIButton *nameBtn;
@property(nonatomic,weak) UILabel *desLB;
@end


typedef NS_ENUM(NSInteger ,HomeBtnItemType){
    HomeBtnItemHead = 100, //头像试图
    HomeBtnItemBtns = 101, //按钮试图
};
@interface YJHomeBtnItem : UIView

@property (nonatomic,assign) HomeBtnItemType homeBtnType;


///头像
@property (nonatomic,strong)  UIImageView *headImageView;
///关注按钮
@property (nonatomic,strong)  UIButton *focusBtn;

///按钮
@property (nonatomic,strong)  UIButton *handleBtn;
///数量
@property (nonatomic,strong)  UILabel  *numLabel;

- (instancetype)initWithType:(HomeBtnItemType )itemType;

@end

NS_ASSUME_NONNULL_END
