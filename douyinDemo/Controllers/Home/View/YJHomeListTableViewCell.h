//
//  YJHomeListTableViewCell.h
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJBaseTableViewCell.h"
#import "YJAweme.h"

NS_ASSUME_NONNULL_BEGIN

@interface YJHomeListTableViewCell : YJBaseTableViewCell
@property (nonatomic,strong) UIImageView *bgImageView;
+(instancetype)cellWithTableView:(UITableView *)tableView;
- (void)setValueAweme:(YJAweme *)aweme;
@end

NS_ASSUME_NONNULL_END
