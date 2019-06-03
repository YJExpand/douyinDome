//
//  YJBaseTableViewCell.m
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJBaseTableViewCell.h"

@implementation YJBaseTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *const baseTableViewCellId = @"baseTableViewCellId";
    YJBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:baseTableViewCellId];
    if (cell == nil) {
        
        cell = [[YJBaseTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:baseTableViewCellId];
    }
    return cell;
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = YJColor_NavigationBarBG;
        self.selectedBackgroundView = [[UIView alloc] initWithFrame:self.bounds];
        self.selectedBackgroundView.backgroundColor = YJColor_BG;
        
        [self setupUI];
    }
    return self;
}

- (void)setupUI
{
    
}
@end
