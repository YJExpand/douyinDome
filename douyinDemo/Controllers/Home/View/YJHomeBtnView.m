//
//  YJHomeBtnView.m
//  douyinDemo
//
//  Created by My-PC on 4/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJHomeBtnView.h"
#import "YJShortVideoModel.h"

@implementation YJHomeBtnView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI{
    
    ///音乐背景
    YJHomeMusicView *musicView = [[YJHomeMusicView alloc]init];
    [self addSubview:musicView];
    [musicView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right);
        make.bottom.equalTo(self.mas_bottom).offset(-50);
        make.left.mas_equalTo(0);
        make.height.equalTo(@(90));
    }];
    _musicView = musicView;
    
    /// 描述
    YJHomeDesView *desView = [[YJHomeDesView alloc] init];
    [self addSubview:desView];
    [desView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.bottom.mas_equalTo(-80);
        make.height.mas_equalTo(300);
    }];
    _desView = desView;
    
    ///分享
    YJHomeBtnItem *shareItem = [[YJHomeBtnItem alloc]initWithType:HomeBtnItemBtns];
    [shareItem.handleBtn setImage:[UIImage imageNamed:@"img_share"] forState:UIControlStateNormal];
    [self addSubview:shareItem];
    self.shareItem = shareItem;
    [shareItem mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right);
        make.bottom.equalTo(musicView.mas_top);
        make.width.equalTo(@(HomeBtnItemWidth));
        make.height.equalTo(@(HomeBtnItemHeight));
    }];
    
    ///评论
    YJHomeBtnItem *commentItem = [[YJHomeBtnItem alloc]initWithType:HomeBtnItemBtns];
    [commentItem.handleBtn setImage:[UIImage imageNamed:@"img_comment"] forState:UIControlStateNormal];
    [self addSubview:commentItem];
    
    self.commentItem = commentItem;
    [commentItem mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right);
        make.bottom.equalTo(shareItem.mas_top);
        make.width.equalTo(@(HomeBtnItemWidth));
        make.height.equalTo(@(HomeBtnItemHeight));
    }];
    
    
    ///点赞
    YJHomeBtnItem *likeItem = [[YJHomeBtnItem alloc]initWithType:HomeBtnItemBtns];
    [likeItem.handleBtn setImage:[UIImage imageNamed:@"img_dislike"] forState:UIControlStateNormal];
    [self addSubview:likeItem];
    self.likeItem = likeItem;
    [likeItem mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right);
        make.bottom.equalTo(commentItem.mas_top);
        make.width.equalTo(@(HomeBtnItemWidth));
        make.height.equalTo(@(HomeBtnItemHeight));
    }];
    
    ///头部
    YJHomeBtnItem *headItem = [[YJHomeBtnItem alloc]initWithType:HomeBtnItemHead];
    headItem.headImageView.image = [UIImage imageNamed:@"imgXiaozhushou80"];
    [headItem.focusBtn setImage:[UIImage imageNamed:@"iconPersonalAddLittle"] forState:UIControlStateNormal];
    self.headItem = headItem;
    [self addSubview:headItem];
    [headItem mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right);
        make.bottom.equalTo(likeItem.mas_top);
        make.width.equalTo(@(HomeBtnItemWidth));
        make.height.equalTo(@(HomeBtnItemWidth));
    }];
    
    ///playImageView
    UIImageView *playImageView = [[UIImageView alloc] init];
    playImageView.image = [UIImage imageNamed:@"icPlayMiddle"];
    playImageView.alpha = 0.3;
    playImageView.hidden = YES;
    [self addSubview:playImageView];
    self.playImageView = playImageView;
    [playImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.equalTo(@(80));
        make.height.equalTo(@(80));
    }];
    
}


- (void)setValueWithAwemeModel:(YJAweme *)aweme
{
    self.shareItem.numLabel.text = [self getCountStr:aweme.statistics.share_count];
    self.likeItem.numLabel.text = [self getCountStr:aweme.statistics.digg_count];
    self.commentItem.numLabel.text = [self getCountStr:aweme.statistics.comment_count];
    [self.headItem.headImageView sd_setImageWithURL:[NSURL URLWithString:[aweme.author.avatar_larger.url_list firstObject]]];
    self.musicView.musicNameLB.text = aweme.music.title;
    self.desView.desLB.text = aweme.desc;
    [self.desView.nameBtn setTitle:[NSString stringWithFormat:@"@%@",aweme.author.nickname] forState:UIControlStateNormal];
}

- (void)setValueWithModel:(YJShortVideoModel *)shortVideoModel
{
    self.shareItem.numLabel.text = [NSString stringWithFormat:@"%ld",shortVideoModel.shareNum];
    self.likeItem.numLabel.text = [NSString stringWithFormat:@"%ld",shortVideoModel.likeNum];
    self.commentItem.numLabel.text = [NSString stringWithFormat:@"%ld",shortVideoModel.commentNum];
}

- (NSString *)getCountStr:(NSInteger)count
{
    if (count < 10000) {
        return [NSString stringWithFormat:@"%zd",count];
    }else{
        return [NSString stringWithFormat:@"%0.1fw",count / 10000.0];
    }
}
@end
