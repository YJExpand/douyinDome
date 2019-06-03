//
//  UIView+YJViewFrame.h
//  douyinDemo
//
//  Created by My-PC on 2/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (YJViewFrame)
@property CGFloat width;
@property CGFloat height;
@property CGFloat x;
@property CGFloat y;
@property CGFloat centerX;
@property CGFloat centerY;
@property CGSize size;
@property CGFloat left;
@property CGFloat right;
@property CGFloat top;
@property CGFloat bottom;
+ (instancetype)viewFromXIB;
@end

NS_ASSUME_NONNULL_END
