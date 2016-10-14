//
//  AppDelegate.m
//  BuDeJie
//
//  Created by 张伯林 on 16/10/13.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import "AppDelegate.h"
#import "ZBLEssenceViewController.h"
#import "ZBLMeViewController.h"
#import "ZBLNewViewController.h"
#import "ZBLPublishViewController.h"
#import "ZBLFriendTrendViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController *tabbarVc = [[UITabBarController alloc] init];
    self.window.rootViewController = tabbarVc;
    
    ZBLEssenceViewController *essence = [[ZBLEssenceViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:essence];
    [tabbarVc addChildViewController:nav];
    
    ZBLNewViewController *new = [[ZBLNewViewController alloc]init];
    UINavigationController *navN = [[UINavigationController alloc]initWithRootViewController:new];
    [tabbarVc addChildViewController:navN];
    
    ZBLPublishViewController *publish = [[ZBLPublishViewController alloc]init];
    UINavigationController *navP= [[UINavigationController alloc]initWithRootViewController:publish];
    [tabbarVc addChildViewController:navP];
    
    ZBLFriendTrendViewController *friendTrend = [[ZBLFriendTrendViewController alloc]init];
    UINavigationController *navF = [[UINavigationController alloc]initWithRootViewController:friendTrend];
    [tabbarVc addChildViewController:navF];
    
    ZBLMeViewController *me = [[ZBLMeViewController alloc]init];
    UINavigationController *navM = [[UINavigationController alloc]initWithRootViewController:me];
    [tabbarVc addChildViewController:navM];
    
    nav.tabBarItem.title = @"精华";
    nav.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    nav.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    
    navN.tabBarItem.title = @"新帖";
    navN.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    navN.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
    
    navF.tabBarItem.title = @"关注";
    navF.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    navF.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    
    navM.tabBarItem.title = @"我";
    navM.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    navM.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
    
    navP.tabBarItem.image = [UIImage imageNamed:@"tabBar_publish_icon"];
    navP.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_publish_click_icon"];
    
    
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
