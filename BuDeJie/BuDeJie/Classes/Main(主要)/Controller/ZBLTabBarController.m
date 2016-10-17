//
//  ZBLTabBarController.m
//  BuDeJie
//
//  Created by 张伯林 on 16/10/14.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import "ZBLTabBarController.h"
#import "ZBLEssenceViewController.h"
#import "ZBLMeViewController.h"
#import "ZBLNewViewController.h"
#import "ZBLPublishViewController.h"
#import "ZBLFriendTrendViewController.h"
#import "ZBLTabBar.h"
#import "ZBLNavigationController.h"
@interface ZBLTabBarController ()

@end

@implementation ZBLTabBarController
+(void)load{
    /*
     appearance:
     1.只要遵守了UIAppearance协议,还要实现这个方法
     2.哪些属性可以通过appearance进行设置,只有被UI_APPEARANCE_SELECTOR宏修饰的属性,才能设置
        appearance:只能在控件显示之前设置,才有作用
     */
    
    //获取整个应用程序下的UITabBarItem
//    UITabBarItem *item = [UITabBarItem appearance];
    //获取哪个类里面的UITabBarItem
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:50];
    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
    
    //设置字体尺寸:只有设置正常状态下,才有效果
    NSMutableDictionary *attrsFont = [NSMutableDictionary dictionary];
    attrsFont[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:attrsFont forState:UIControlStateNormal];
}
//+(void)initialize{
//
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpAllChildViewController];
    [self setUpAllTitleButton];
    //自定义tabBar
    [self setUpTabBar];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
/*
 自定义tabBar
 */
-(void)setUpTabBar{
    ZBLTabBar *tabBar = [[ZBLTabBar alloc]init];
    [self setValue:tabBar forKeyPath:@"tabBar"];
}
#pragma mark ---添加所有的子控制器
-(void)setUpAllChildViewController{
    //精华
    ZBLEssenceViewController *essence = [[ZBLEssenceViewController alloc]init];
    ZBLNavigationController *nav = [[ZBLNavigationController alloc]initWithRootViewController:essence];
    [self addChildViewController:nav];
    
    //新帖
    ZBLNewViewController *new = [[ZBLNewViewController alloc]init];
    ZBLNavigationController *navN = [[ZBLNavigationController alloc]initWithRootViewController:new];
    [self addChildViewController:navN];
    
    //发布
//    ZBLPublishViewController *publish = [[ZBLPublishViewController alloc]init];
//    [self addChildViewController:publish];
    
    //关注
    ZBLFriendTrendViewController *friendTrend = [[ZBLFriendTrendViewController alloc]init];
    ZBLNavigationController *navF = [[ZBLNavigationController alloc]initWithRootViewController:friendTrend];
    [self addChildViewController:navF];
    
    //我
    ZBLMeViewController *me = [[ZBLMeViewController alloc]init];
    ZBLNavigationController *navM = [[ZBLNavigationController alloc]initWithRootViewController:me];
    [self addChildViewController:navM];
}
#pragma mark ---设置所有tabbar上的按钮的内容
-(void)setUpAllTitleButton{
    UINavigationController *nav = self.childViewControllers[0];
    nav.tabBarItem.title = @"精华";
    nav.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    nav.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    
    
    UINavigationController *navN = self.childViewControllers[1];
    navN.tabBarItem.title = @"新帖";
    navN.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    navN.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
    
    UINavigationController *navF = self.childViewControllers[2];
    navF.tabBarItem.title = @"关注";
    navF.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    navF.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    
    //我
    UINavigationController *navM = self.childViewControllers[3];
    navM.tabBarItem.title = @"我";
    navM.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    navM.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
    
    //发布
//    ZBLPublishViewController *navP = self.childViewControllers[2];
//    navP.tabBarItem.image = [UIImage imageNamed:@"tabBar_publish_icon"];
//    navP.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_publish_click_icon"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
