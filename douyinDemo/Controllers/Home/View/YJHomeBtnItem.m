//
//  YJHomeBtnItem.m
//  douyinDemo
//
//  Created by My-PC on 4/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJHomeBtnItem.h"

/** 背景音乐*/
@implementation YJHomeMusicView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubviews];
    }
    return self;
}

- (void)setupSubviews{
    //
    UIButton *musicImageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [musicImageBtn setBackgroundImage:[UIImage imageNamed:@"music_bg"] forState:UIControlStateNormal];
    [musicImageBtn  addTarget:self action:@selector(musicImageBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview: musicImageBtn];
    [musicImageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).offset(-10);
        make.bottom.equalTo(self.mas_bottom).offset(-10);
        make.width.height.equalTo(@(HomeHeadImageViewWidth));
    }];
    _musicImageBtn = musicImageBtn;
    
    UILabel *musicNameLB = [[UILabel alloc] initWithText:@"音乐名称" textColor:YJColor_Theme_White fontSize:14];
    [self addSubview:musicNameLB];
    [musicNameLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(30);
        make.bottom.mas_equalTo(-10);
        make.width.mas_equalTo(200);
    }];
    _musicNameLB = musicNameLB;
    
    UIImageView *musicIcon = [[UIImageView alloc] initWithImage:YJImageWithStr(@"imgXiaozhushou80")];
    [self addSubview:musicIcon];
    [musicIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.centerY.mas_equalTo(musicNameLB);
    }];
}

- (void)musicImageBtnClick:(UIButton *)sender{
    
}
@end

/** 描述信息*/
@implementation YJHomeDesView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubviews];
    }
    return self;
}

- (void)setupSubviews
{
    // 描述
    UILabel *desLB = [[UILabel alloc] initWithText:@"" textColor:YJColor_Theme_White fontSize:15];
    desLB.numberOfLines = 4;
    [self addSubview:desLB];
    [desLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(15);
        make.right.mas_equalTo(-100);
        make.bottom.mas_equalTo(-10);
    }];
    _desLB = desLB;
    
    //名字
    UIButton *nameBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [nameBtn setTitleColor:YJColor_Theme_White forState:UIControlStateNormal];
    nameBtn.titleLabel.font = YJsysFontOfSize(15);
    [self addSubview:nameBtn];
    [nameBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(15);
        make.bottom.mas_equalTo(desLB.mas_top).mas_offset(-10);
        make.height.mas_equalTo(20);
    }];
    _nameBtn = nameBtn;
    
    
}

@end



@implementation YJHomeBtnItem

- (instancetype)initWithType:(HomeBtnItemType )itemType
{
    self = [super init];
    if (self) {
        if(itemType ==HomeBtnItemHead){
            [self setupHeadView];
        }else if (itemType == HomeBtnItemBtns) {
            [self setupBtnsView];
        }
    }
    return self;
}

- (void)setupHeadView{
    //头像
    UIImageView *headImageView = [[UIImageView alloc] init];
    
    headImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    headImageView.layer.borderWidth = 1.f;
    headImageView.layer.cornerRadius =HomeHeadImageViewWidth/2;
    headImageView.layer.masksToBounds = YES;
    [self addSubview:headImageView];
    headImageView.userInteractionEnabled = YES;
    self.headImageView = headImageView;
    [headImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX);
        make.top.equalTo(self.mas_top);
        make.width.height.equalTo(@(HomeHeadImageViewWidth));
    }];
    //关注按钮
    UIButton *focusBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [focusBtn setImage:[UIImage imageNamed:@"iconPersonalAddLittle"] forState:UIControlStateNormal];
    //    [focusBtn  addTarget:self action:@selector(focusBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    self.focusBtn = focusBtn;
    //    focusBtn.backgroundColor = UIColorFormRandom;
    [self addSubview: focusBtn];
    
    [focusBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX);
        make.top.equalTo(headImageView.mas_bottom).offset(-15);
        make.width.equalTo(@(30));
        make.height.equalTo(@(30));
    }];
}

- (void)setupBtnsView{
    //
    UIButton *handleBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [handleBtn  addTarget:self action:@selector(handleBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview: handleBtn];
    self.handleBtn = handleBtn;
    [handleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX);
        make.top.equalTo(self.mas_top);
        make.width.equalTo(@(HomeHandleBtnWidth));
        make.height.equalTo(@(HomeHandleBtnWidth));
    }];
    
    //
    UILabel *numLabel = [[UILabel alloc] init];
    numLabel.backgroundColor = [UIColor clearColor];
    numLabel.textColor = [UIColor whiteColor];
    numLabel.textAlignment = NSTextAlignmentCenter;
    numLabel.font = YJsysFontOfSize(14);
    numLabel.numberOfLines = 0;
    [self addSubview:numLabel];
    self.numLabel = numLabel;
    //    self.numLabel.backgroundColor = UIColorFormRandom;
    [numLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(handleBtn.mas_centerX);
        make.top.equalTo(handleBtn.mas_bottom);
        make.width.equalTo(self.mas_width);
        make.height.equalTo(@(30));
    }];
    
}


#pragma mark - clicks
- (void)focusBtnClick:(UIButton *)sender{
    
}

- (void)handleBtnClick:(UIButton *)sender
{
    
}
@end
