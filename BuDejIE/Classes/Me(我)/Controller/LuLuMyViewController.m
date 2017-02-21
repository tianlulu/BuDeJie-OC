//
//  LuLu-MevIewController.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/10/9.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "LuLuMyViewController.h"
#import "TLSettingViewController.h"

@implementation LuLuMyViewController
- (void)viewDidLoad {
    [self setupoNavBar];
}

- (void)setupoNavBar {
    //左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] highImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] target:self action:@selector(friendsRecomment)];
    
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-setting-icon"] highImage:[UIImage imageNamed:@"mine-setting-icon-click"] target:self action:@selector(setting)];
    
    UIBarButtonItem *nightItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-moon-icon"] selImage:[UIImage imageNamed:@"mine-moon-icon-click"] target:self action:@selector(night:)];
    
    self.navigationItem.rightBarButtonItems = @[settingItem,nightItem];
    
    //titleView
    self.navigationItem.title = @"我的";
}


- (void)friendsRecomment {
  
}

#pragma mark -设置就会调用
-(void)setting {
    TLSettingViewController * settingVc = [[TLSettingViewController alloc]init];
    //必须要在跳转之前去设置
    settingVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:settingVc animated:YES];
    
    /*
     1.底部条没有隐藏
     2:返回按钮样式改变 : 1.通过上一个控制器设置     2：通过当前控制器的返回按钮设置
    */
}


- (void)night:(UIButton *)btn {
    btn.selected = !btn.selected;
}
@end
