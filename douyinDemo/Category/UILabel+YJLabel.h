//
//  UILabel+YJLabel.h
//  douyinDemo
//
//  Created by My-PC on 2/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//



NS_ASSUME_NONNULL_BEGIN

@interface UILabel (YJLabel)

/**
 *    普通label
 *  @param text 文字
 *  @param textColor 文字颜色
 *  @param fontSize 大小
 */
- (instancetype)initWithText:(NSString *)text
                   textColor:(UIColor *)textColor
                    fontSize:(CGFloat)fontSize;

/**
 *    粗体label
 *  @param text 文字
 *  @param textColor 文字颜色
 *  @param fontSize 粗体大小
 */
- (instancetype)initWithText:(NSString *)text
                   textColor:(UIColor *)textColor
                fontBolySize:(CGFloat)fontSize;

@end

NS_ASSUME_NONNULL_END
