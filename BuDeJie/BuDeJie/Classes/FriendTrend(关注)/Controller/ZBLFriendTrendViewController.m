//
//  ZBLFriendTrendViewController.m
//  BuDeJie
//
//  Created by 张伯林 on 16/10/14.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import "ZBLFriendTrendViewController.h"

@interface ZBLFriendTrendViewController ()

@end

@implementation ZBLFriendTrendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNavBar];
}
-(void)setupNavBar{
    
    //左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWiehImage:[UIImage imageNamed:@"friendsRecommentIcon"] highImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] addTarget:self action:@selector(friendsRecomment)];
    
    //titleView
    self.navigationItem.title = @"我的关注";
    
}
-(void)friendsRecomment{

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
