//
//  AppDelegate.m
//  douyinDemo
//
//  Created by My-PC on 1/6/2019.
//  Copyright © 2019 YJExpand. All rights reserved.
//

#import "AppDelegate.h"
#import "MainTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.backgroundColor = YJColor_BG;
    
    self.window.rootViewController = [[MainTabBarController alloc] init];
    //    /** 每个页面的圆角处理 */
    self.window.layer.cornerRadius = 5;
    self.window.layer.masksToBounds = YES;
    
    [self.window makeKeyAndVisible];
    return YES;
}


@end
