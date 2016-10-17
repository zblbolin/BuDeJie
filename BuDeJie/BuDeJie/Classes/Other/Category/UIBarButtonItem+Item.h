//
//  UIBarButtonItem+Item.h
//  BuDeJie
//
//  Created by 张伯林 on 16/10/16.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)
+(UIBarButtonItem *)itemWiehImage:(UIImage *)image highImage:(UIImage *)highImage addTarget:(id)target action:(SEL)action;

+(UIBarButtonItem *)backItemWiehImage:(UIImage *)image highImage:(UIImage *)highImage addTarget:(id)target action:(SEL)action title:(NSString *)title;

+(UIBarButtonItem *)itemWiehImage:(UIImage *)image selImage:(UIImage *)selImage addTarget:(id)target action:(SEL)action;
@end
