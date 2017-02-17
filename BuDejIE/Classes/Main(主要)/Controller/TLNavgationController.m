//
//  TLNavgationController.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/12/23.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "TLNavgationController.h"

@interface TLNavgationController ()

@end

@implementation TLNavgationController
- (void)loadView {
   // UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    UINavigationBar *navBar = [UINavigationBar appearance];
    //设置导航标题--UINavigationBar
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    [navBar setTitleTextAttributes:attrs];
    [navBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}
@end
