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
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWiehImage:[UIImage imageNamed:@"nav_item_game_icon"] highImage:[UIImage imageNamed:@"nav_item_game_click_icon"] addTarget:self action:@selector(game)];
    //右边按钮
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWiehImage:[UIImage imageNamed:@"navigationButtonRandom"] highImage:[UIImage imageNamed:@"navigationButtonRandomClick"] addTarget:self action:@selector(random)];
    //titleView
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
}
-(void)game{
    ZBLFunc;
}
-(void)random{

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
