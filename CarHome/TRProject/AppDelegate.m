//
//  AppDelegate.m
//  TRProject
//
//  Created by yingxin on 16/7/10.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "AppDelegate.h"
#import "NetManager.h"
#import "ViewController.h"
#import "MyPageVC.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    

    
    self.window=[[UIWindow alloc]initWithFrame:UIScreen.mainScreen.bounds];
    
    
    MyPageVC *vc = [MyPageVC new];
    //让题目出现在导航栏, 此代码不能写在viewdidload
    vc.showOnNavigationBar = YES;
    //题目的背景栏颜色
    vc.menuBGColor = [UIColor clearColor];
    //题目的显示效果
    vc.menuViewStyle = WMMenuViewStyleLine;
    
    self.window.rootViewController=[[UINavigationController alloc]initWithRootViewController:vc];
    [self.window makeKeyAndVisible];
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
  
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
