//
//  UIView+Frame.h
//  BuDeJie
//
//  Created by 张伯林 on 16/10/16.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
    写分类:避免跟其他开发者产生冲突
 */
@interface UIView (Frame)
@property CGFloat zbl_width;
@property CGFloat zbl_height;
@property CGFloat zbl_x;
@property CGFloat zbl_y;
@end
