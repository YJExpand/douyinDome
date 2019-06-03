//
//  YJBaseTableView.m
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJBaseTableView.h"

@implementation YJBaseTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.dataSource = self;
        self.delegate = self;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        self.backgroundColor = YJColor_BG;
        
#ifdef __IPHONE_11_0
        if ([self respondsToSelector:@selector(setContentInsetAdjustmentBehavior:)]) {
            if (@available(iOS 11.0, *)) {
                self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
            } else {
                // Fallback on earlier versions
            }
        }
#endif
        
    }
    return self;
}

#pragma mark - <UITableViewDataSource>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

#pragma mark - <UITableViewDelegate>
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.baseDelegate respondsToSelector:@selector(tableView:didSelectRowAtIndexPath:)])
    {
        [self.baseDelegate tableView:self didSelectRowAtIndexPath:indexPath];
    }
    //取消选中状态
    [self deselectRowAtIndexPath:indexPath animated:NO];
    
}
@end
