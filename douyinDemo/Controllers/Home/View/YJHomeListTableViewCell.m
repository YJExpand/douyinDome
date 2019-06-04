//
//  YJHomeListTableViewCell.m
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJHomeListTableViewCell.h"
#import "YJHomeBtnView.h"

@interface YJHomeListTableViewCell()

@property (nonatomic,strong) YJHomeBtnView *btnView;
@end

@implementation YJHomeListTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *const cellId = @"homeListTableViewCellId";
    YJHomeListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[YJHomeListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    return cell;
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self setupUI];
    }
    
    return self;
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{ }
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{ }
#pragma mark - UI
- (void)setupUI
{
    //顶部图片
    [self.contentView addSubview:self.bgImageView];
    
    [self.contentView addSubview:self.btnView];
    [self.btnView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView);
    }];
}


#pragma mark -
- (void)setValueAweme:(YJAweme *)aweme
{
    [self.bgImageView sd_setImageWithURL:[NSURL URLWithString:[aweme.video.origin_cover.url_list firstObject]]];

    [self.btnView setValueWithAwemeModel:aweme];
}

#pragma mark - getting
- (UIImageView *)bgImageView
{
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kScreenH)];
        _bgImageView.contentMode = UIViewContentModeScaleAspectFit;
        _bgImageView.tag = 100;
    }
    return _bgImageView;
}
-(YJHomeBtnView *)btnView{
    if(!_btnView)
    {
        _btnView = [[YJHomeBtnView alloc]init];
    }
    return _btnView;
}
@end
