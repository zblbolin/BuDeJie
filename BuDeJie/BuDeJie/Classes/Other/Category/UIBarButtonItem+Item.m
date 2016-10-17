//
//  UIBarButtonItem+Item.m
//  BuDeJie
//
//  Created by 张伯林 on 16/10/16.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import "UIBarButtonItem+Item.h"

@implementation UIBarButtonItem (Item)
+(UIBarButtonItem *)itemWiehImage:(UIImage *)image highImage:(UIImage *)highImage addTarget:(id)target action:(SEL)action{
    //左边按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:highImage forState:UIControlStateHighlighted];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    //把UIButton包装成UIBarButtonItem.就导致按钮的点击区域扩大
    UIView *containV = [[UIView alloc]initWithFrame:button.frame];
    [containV addSubview:button];
    
    return [[UIBarButtonItem alloc]initWithCustomView:containV];
}
+(UIBarButtonItem *)itemWiehImage:(UIImage *)image selImage:(UIImage *)selImage addTarget:(id)target action:(SEL)action{
    //左边按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:selImage forState:UIControlStateSelected];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    //把UIButton包装成UIBarButtonItem.就导致按钮的点击区域扩大
    UIView *containV = [[UIView alloc]initWithFrame:button.frame];
    [containV addSubview:button];
    
    return [[UIBarButtonItem alloc]initWithCustomView:containV];
}

+(UIBarButtonItem *)backItemWiehImage:(UIImage *)image highImage:(UIImage *)highImage addTarget:(id)target action:(SEL)action title:(NSString *)title{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:highImage forState:UIControlStateHighlighted];
    [button sizeToFit];
    button.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    //把UIButton包装成UIBarButtonItem.就导致按钮的点击区域扩大
    UIView *containV = [[UIView alloc]initWithFrame:button.frame];
    [containV addSubview:button];
    
    return [[UIBarButtonItem alloc]initWithCustomView:containV];
}
@end
