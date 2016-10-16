//
//  UIView+Frame.m
//  BuDeJie
//
//  Created by 张伯林 on 16/10/16.
//  Copyright © 2016年 张伯林. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
-(void)setZbl_height:(CGFloat)zbl_height{
    CGRect rect = self.frame;
    rect.size.height = zbl_height;
    self.frame = rect;
}
-(CGFloat)zbl_height{
    return self.frame.size.height;
}

-(void)setZbl_width:(CGFloat)zbl_width{
    CGRect rect = self.frame;
    rect.size.height = zbl_width;
    self.frame = rect;
}
-(CGFloat)zbl_width{
    return self.frame.size.width;
}

-(void)setZbl_x:(CGFloat)zbl_x{
    CGRect rect = self.frame;
    rect.origin.x = zbl_x;
    self.frame = rect;
}
-(CGFloat)zbl_x{
    return self.frame.origin.x;
}

-(void)setZbl_y:(CGFloat)zbl_y{
    CGRect rect = self.frame;
    rect.origin.y = zbl_y;
    self.frame = rect;
}
-(CGFloat)zbl_y{
    return self.frame.origin.y;
}
@end
