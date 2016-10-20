//
//  ZBLADViewController.m
//  BuDeJie
//
//  Created by 张伯林 on 16/10/18.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import "ZBLADViewController.h"
#import <AFNetworking/AFNetworking.h>
//#define <#macro#>
@interface ZBLADViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *launchImageView;
@property (weak, nonatomic) IBOutlet UIView *adContainView;

@end

@implementation ZBLADViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置启动图片
    [self setupLaunchImage];
    
    //加载广告数据
    [self loadAdData];
}
-(void)loadAdData{
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
//    mgr GET:<#(nonnull NSString *)#> parameters:<#(nullable id)#> progress:<#^(NSProgress * _Nonnull downloadProgress)downloadProgress#> success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        
//    }
}
- (void)setupLaunchImage{
    if (iphone6P) {  //6P 7P
        self.launchImageView.image = [UIImage imageNamed:@"LaunchImage-800-Portrait-736h@3x"];
    }else if (iphone6) { //6,7
        self.launchImageView.image = [UIImage imageNamed:@"LaunchImage-800-667h@2x"];
    }else if (iphone5){ //5
        self.launchImageView.image = [UIImage imageNamed:@"LaunchImage-568h@2x"];
    }else if (iphone4){  //4
        self.launchImageView.image = [UIImage imageNamed:@"LaunchImage-700@2x"];
    }
    
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
