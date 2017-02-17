//
//  LuLu-EsenseViewController.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/10/9.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "LuLuEsenseViewController.h"

@implementation LuLuEsenseViewController
- (void)viewDidLoad {
    //设置导航条
    [self setupoNavBar];
}

#pragma mark - 设置导航条
- (void)setupoNavBar {
    //左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"nav_item_game_icon"] highImage:[UIImage imageNamed:@"nav_item_game_click_icon"] target:self action:@selector(game)];
    //把UIBUtton包装成UIBarButtonItem，就导致按钮点击区域过大
    
    //右边按钮
     self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"navigationButtonRandom"] highImage:[UIImage imageNamed:@"navigationButtonRandomClick"] target:self action:@selector(game)];
    //titleView
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@
                                                                    "MainTitle"]];
}

- (void)game {
    NSLog(@"kkkkk");
    TLFunc;
}
@end
