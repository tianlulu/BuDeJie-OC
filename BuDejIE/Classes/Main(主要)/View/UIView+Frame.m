//
//  UIView+Frame.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/10/24.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
- (CGFloat)Lulu_width {
    return self.frame.size.width;
}

- (void)setLulu_width:(CGFloat)Lulu_width{
    CGRect rect = self.frame;
    rect.size.width = Lulu_width;
    self.frame = rect;
}

- (CGFloat)Lulu_height {
    return self.frame.size.height;
}

- (void)setLulu_height:(CGFloat)Lulu_height {
    CGRect rect = self.frame;
    rect.size.height = Lulu_height;
    self.frame = rect;
}

- (CGFloat)Lulu_x {
    return self.frame.origin.x;
}

- (void)setLulu_x:(CGFloat)Lulu_x {
    CGRect rect = self.frame;
    rect.origin.x = Lulu_x;
    self.frame = rect;
}

- (CGFloat)Lulu_y{
    return self.frame.origin.y;
}

- (void)setLulu_y:(CGFloat)Lulu_y {
    CGRect rect = self.frame;
    rect.origin.y = Lulu_y;
    self.frame = rect;
}
@end
