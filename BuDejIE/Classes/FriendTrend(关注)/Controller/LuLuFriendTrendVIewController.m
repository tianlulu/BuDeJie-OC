//
//  LuLu-friendTrendVIewCOntroller.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/10/9.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "LuLuFriendTrendViewController.h"

@implementation LuLuFriendTrendViewController
- (void)viewDidLoad {
    [self setupoNavBar];
}

- (void)setupoNavBar {
    //左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] highImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] target:self action:@selector(friendsRecomment)];
    
    //titleView
    self.navigationItem.title = @"我的关注";
}

- (void)friendsRecomment {
    
}
@end
