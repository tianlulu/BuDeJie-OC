//
//  LuLu-NewViewController.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/10/9.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "LuLuNewViewController.h"

@implementation LuLuNewViewController
- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor yellowColor];
    [self setupoNavBar];
}

- (void)setupoNavBar {
    //左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] highImage:[UIImage imageNamed:@"MainTagSubIconClick"] target:self action:@selector(TagClick)];
    
    //titleView
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@
                                                                "MainTitle"]];
}

- (void)TagClick {
    TLFunc;
}
@end
