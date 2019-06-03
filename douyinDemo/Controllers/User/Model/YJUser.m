//
//  YJUser.m
//  douyinDemo
//
//  Created by My-PC on 3/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "YJUser.h"

@implementation YJFollowerYJetail

@end

@implementation YJPlatformSyncInfo

@end

@implementation YJVideoIcon

@end

@implementation YJShareInfo

@end

@implementation YJOriginalMusician

@end

@implementation YJActivity

@end

@implementation YJUser

+ (NSDictionary *)mj_objectClassInArray{
    return @{@"followerYJetail"  :[YJFollowerYJetail class],
             @"platformSyncInfo" :[YJPlatformSyncInfo class]
             };
}
@end
