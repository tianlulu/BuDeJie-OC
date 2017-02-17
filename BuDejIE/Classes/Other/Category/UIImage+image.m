//
//  UIImage+image.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/10/11.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "UIImage+image.h"

@implementation UIImage (image)
+ (UIImage *)RenderingImageWithName:(NSString *)imageName {
    UIImage *image = [UIImage imageNamed:imageName];
    return  [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end
