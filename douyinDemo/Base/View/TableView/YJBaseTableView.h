//
//  YJBaseTableView.h
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol YJBaseTableViewDelegate <NSObject>
@optional
- (void)tableView:(id)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
@end

@interface YJBaseTableView : UITableView<UITableViewDataSource,UITableViewDelegate>
///通用数据源
@property(nonatomic, strong)NSMutableArray *dataArray;

///代理
@property(nonatomic, weak)id <YJBaseTableViewDelegate> baseDelegate;
@end

NS_ASSUME_NONNULL_END
