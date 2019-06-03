//
//  UILabel+YJLabel.m
//  douyinDemo
//
//  Created by My-PC on 2/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "UILabel+YJLabel.h"

@implementation UILabel (YJLabel)

- (instancetype)initWithText:(NSString *)text
                   textColor:(UIColor *)textColor
                    fontSize:(CGFloat)fontSize
{
    self = [super init];
    if (self) {
        self.text = text;
        self.textColor = textColor;
        self.font = YJsysFontOfSize(fontSize);
    }
    return self;
}

- (instancetype)initWithText:(NSString *)text
                   textColor:(UIColor *)textColor
                fontBolySize:(CGFloat)fontSize
{
    self = [super init];
    if (self) {
        self.text = text;
        self.textColor = textColor;
        self.font = YJboldFontOfSize(fontSize);
    }
    return self;
}


@end
