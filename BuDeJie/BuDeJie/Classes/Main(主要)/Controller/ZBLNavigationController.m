//
//  ZBLNavigationController.m
//  BuDeJie
//
//  Created by 张伯林 on 16/10/16.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import "ZBLNavigationController.h"

@interface ZBLNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation ZBLNavigationController
+(void)load{
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    //设置导航条标题字体和大小
    NSMutableDictionary *atts = [NSMutableDictionary dictionary];
    atts[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    [navBar setTitleTextAttributes:atts];
    
    //设置导航条背景图片
    [navBar setBackgroundImage:[UIImage imageNamed:@"navgationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count > 0) {//非根控制器
        //恢复滑动返回功能->分析:把系统的返回按钮覆盖->1.手势失效(可能手势代理做一些事情,导致手势失效)
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem backItemWiehImage:[UIImage imageNamed:@"navigationButtonReturn"] highImage:[UIImage imageNamed:@"navigationButtonReturnClick"] addTarget:self action:@selector(back) title:@"返回"];
    }
    [super pushViewController:viewController animated:YES];
}
-(void)back{
    [self popViewControllerAnimated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //bug:程序还在运行,但是界面假死了
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    pan.delegate = self;
    self.interactivePopGestureRecognizer.enabled = NO;
    [self.view addGestureRecognizer:pan];
}
#pragma mark -- UIGestureRecognizerDelegate
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    return self.childViewControllers.count > 1;
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
