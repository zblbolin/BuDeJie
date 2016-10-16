//
//  ZBLTabBar.m
//  BuDeJie
//
//  Created by 张伯林 on 16/10/15.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import "ZBLTabBar.h"
#import "UIView+Frame.h"
@interface ZBLTabBar()
@property(nonatomic,weak)UIButton *plusButton;
@end
@implementation ZBLTabBar
-(UIButton *)plusButton{
    if (!_plusButton) {
        UIButton *plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [plusButton sizeToFit];
        _plusButton = plusButton;
        [self addSubview:plusButton];
    }
    return _plusButton;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    NSInteger count = self.items.count + 1;
    CGFloat btnW = self.zbl_width / count;
    CGFloat btnH = self.zbl_height;
    CGFloat btnX = 0;
    NSInteger i = 0;
    //布局tabBarButton
    for (UIView *tabBarButton in self.subviews) {
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i == 2) {
                i+= 1;
            }
            btnX = i * btnW;
            tabBarButton.frame = CGRectMake(btnX, 0, btnW, btnH);
            i ++ ;
        }
    }
    //设置加号按钮center
    self.plusButton.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
}

@end
