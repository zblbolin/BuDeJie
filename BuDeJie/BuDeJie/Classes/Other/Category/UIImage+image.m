//
//  UIImage+image.m
//  BuDeJie
//
//  Created by 张伯林 on 16/10/14.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import "UIImage+image.h"

@implementation UIImage (image)
+(UIImage *)imageOriginalWithName:(NSString *)imageName{
    return [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end
