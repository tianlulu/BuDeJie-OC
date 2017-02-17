//
//  LuLutabBar.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/10/20.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "LuLutabBar.h"
#import "UIView+Frame.h"
@interface LuLutabBar()
@property (nonatomic,weak) UIButton *plusButton;
@end

@implementation LuLutabBar
- (UIButton *)plusButton {
    if (!_plusButton) {
        UIButton *plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [plusButton sizeToFit];
        self.plusButton = plusButton;
        [self addSubview:plusButton];
    }
    return  _plusButton;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    NSLog(@"%@",self.subviews);
    NSInteger count = self.items.count + 1;
    CGFloat btnW = self.Lulu_width / count;
    CGFloat brnH = self.Lulu_height;
    NSInteger i = 0;
    //CGFloat orignX = 0 ;
    for (UIView *itemBtn in self.subviews) {
        //系统私有的类不能使用isKindOfClass，只能使用反编译
        if ([itemBtn isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            NSLog(@"%@",itemBtn);
            if (i == 2) {
                i += 1;
            }
            itemBtn.frame = CGRectMake(i * btnW, 0, btnW, brnH);
            i++;
        }
    }
    self.plusButton.center = CGPointMake(self.Lulu_width / 2, self.Lulu_height /2);
}
@end
