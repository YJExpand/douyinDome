//
//  YJHomeListTableView.m
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJHomeListTableView.h"

@implementation YJHomeListTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.dataSource = self;
        self.delegate = self;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.pagingEnabled = YES;
        [self setupUI];
        
    }
    return self;
}

#pragma mark - UI
- (void)setupUI
{
    
}

#pragma mark - <UITabelViewDataSource>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YJHomeListTableViewCell *cell = [YJHomeListTableViewCell cellWithTableView:self];
    YJAweme *aweme = self.dataArray[indexPath.row];
    [cell setValueAweme:aweme];
    return cell;
}


#pragma mark - <UITabelViewDelegate>
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return kScreenH;
}
@end
