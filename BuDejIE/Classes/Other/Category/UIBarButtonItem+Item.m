//
//  UIBarButtonItem+Item.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/12/23.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "UIBarButtonItem+Item.h"

@implementation UIBarButtonItem (Item)
+ (UIBarButtonItem *)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(nullable id)target action:(SEL)action{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highImage forState:UIControlStateSelected];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    //将btn包装成UIView（如果直接将btn包装成UIBarButtonItem）
    UIView *containerView = [[UIView alloc]initWithFrame:btn.bounds];
    [containerView addSubview:btn];
    
    //UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
    //self.navigationItem.leftBarButtonItem = leftItem;
    return [[UIBarButtonItem alloc]initWithCustomView:containerView];
}


+ (UIBarButtonItem *)itemWithImage:(UIImage *)image selImage:(UIImage *)selImage target:(id)target action:(SEL)action{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:selImage forState:UIControlStateHighlighted];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    //将btn包装成UIView（如果直接将btn包装成UIBarButtonItem）
    UIView *containerView = [[UIView alloc]initWithFrame:btn.bounds];
    [containerView addSubview:btn];
    
    //UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
    //self.navigationItem.leftBarButtonItem = leftItem;
    return [[UIBarButtonItem alloc]initWithCustomView:containerView];
}
@end
