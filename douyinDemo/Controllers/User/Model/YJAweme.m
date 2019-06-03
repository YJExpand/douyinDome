//
//  YJAweme.m
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJAweme.h"

@implementation YJStreamUrl

@end

@implementation YJRoom

@end
@implementation YJAddressInfo

@end
@implementation YJPoiInfo

@end

@implementation YJVideoLabels

@end
@implementation YJTextExtra

@end

@implementation YJChaList

@end
@implementation YJStatu

@end

@implementation YJStatistic

@end


@implementation ShareInfo

@end
@implementation YJDescendant
+ (NSDictionary *)mj_objectClassInArray{
    return @{@"platforms":[NSString class]};
}
@end

@implementation YJRiskInfo

@end
@implementation YJAweme

+ (NSDictionary *)mj_objectClassInArray{
    
    return @{@"chaList":[YJChaList class],
             @"textExtra":[YJTextExtra class],
             @"videoLabels":[YJVideoLabels class]
             };
}

@end
