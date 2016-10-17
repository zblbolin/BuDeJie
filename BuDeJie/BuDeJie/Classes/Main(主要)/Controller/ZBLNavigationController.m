//
//  ZBLNavigationController.m
//  BuDeJie
//
//  Created by 张伯林 on 16/10/16.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import "ZBLNavigationController.h"

@interface ZBLNavigationController ()

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
    viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem backItemWiehImage:[UIImage imageNamed:@"navigationButtonReturn"] highImage:[UIImage imageNamed:@"navigationButtonReturnClick"] addTarget:self action:@selector(back) title:@"返回"];
    [super pushViewController:viewController animated:YES];
}
-(void)back{
    [self popViewControllerAnimated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
