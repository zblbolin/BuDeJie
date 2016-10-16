//
//  ZBLEssenceViewController.m
//  BuDeJie
//
//  Created by 张伯林 on 16/10/14.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import "ZBLEssenceViewController.h"

@interface ZBLEssenceViewController ()

@end

@implementation ZBLEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNavBar];
    
}
-(void)setupNavBar{
    //左边按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"nav_item_game_icon"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"nav_item_game_click_icon"] forState:UIControlStateHighlighted];
    [button sizeToFit];
    [button addTarget:self action:@selector(game) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    //右边按钮
    //titleView
    
}
-(void)game{
    ZBLFunc;
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
