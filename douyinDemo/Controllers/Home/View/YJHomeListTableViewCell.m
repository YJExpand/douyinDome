//
//  YJHomeListTableViewCell.m
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJHomeListTableViewCell.h"

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

#pragma mark - UI
- (void)setupUI
{
    //顶部图片
    [self.contentView addSubview:self.bgImageView];
    
//    [self.contentView addSubview:self.btnView];
//    [self.btnView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(self.contentView);
//    }];
}


#pragma mark -
- (void)setValueAweme:(YJAweme *)aweme
{
    [self.bgImageView sd_setImageWithURL:[NSURL URLWithString:[aweme.video.origin_cover.url_list firstObject]]];

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
@end
