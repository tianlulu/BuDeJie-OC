//
//  LuLu-MevIewController.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/10/9.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "LuLuMyViewController.h"

@implementation LuLuMyViewController
- (void)viewDidLoad {
    [self setupoNavBar];
}

- (void)setupoNavBar {
    //左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] highImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] target:self action:@selector(friendsRecomment)];
    
    UIBarButtonItem *settingItam = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-setting-icon"] highImage:[UIImage imageNamed:@"mine-setting-icon-click"] target:self action:@selector(setting)];
    
    UIBarButtonItem *nightItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-moon-icon"] selImage:[UIImage imageNamed:@"mine-moon-icon-click"] target:self action:@selector(night:)];
    
    self.navigationItem.rightBarButtonItems = @[settingItam,nightItem];
    
    //titleView
    self.navigationItem.title = @"我的";
    
}


- (void)friendsRecomment {
    
}

-(void)setting {
    
}

- (void)night:(UIButton *)btn {
    btn.selected = !btn.selected;
}
@end
