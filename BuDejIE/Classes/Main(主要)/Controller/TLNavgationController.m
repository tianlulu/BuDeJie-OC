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


//设置一次 loadView
- (void)load{
   // UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    //只要是通过模型设置，都是通过富文本设置
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    //设置导航标题--UINavigationBar
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    [navBar setTitleTextAttributes:attrs];
    
    //设置导航条背景图片
    [navBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
     TLFunc;
    
    if (self.childViewControllers.count > 0) {
        //统一设置左边导航按钮
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem backItemWithImage:
                                                           [UIImage imageNamed:@"navigationButtonReturn"] highImage:[UIImage imageNamed:@"navigationButtonReturnClick"] target:self
                                                                                      action:@selector(back) title:@"返回"];
    }
    //正真的跳转
    [super pushViewController:viewController animated:YES];
}


-(void)back {
    [self popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}
@end
