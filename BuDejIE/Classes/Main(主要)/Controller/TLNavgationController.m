//
//  TLNavgationController.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/12/23.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "TLNavgationController.h"

@interface TLNavgationController ()<UIGestureRecognizerDelegate>

@end

@implementation TLNavgationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 控制手势什么时候触发,只有非根控制器才需要触发手势
    // self.interactivePopGestureRecognizer.delegate = self;
    // 假死状态:程序还在运行,但是界面死了.
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    [self.view addGestureRecognizer:pan];
    pan.delegate = self;
    // 禁止之前手势
    self.interactivePopGestureRecognizer.enabled = NO;
}

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
    //恢复滑动返回功能 -> 分析：把系统的滑动返回功能覆盖 -> 手势失效(1.手势被清空 2.可能手势代理做了一些事情，导致手势失效)
    if (self.childViewControllers.count > 0) {
        //统一设置左边导航按钮
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem backItemWithImage:
                                                           [UIImage imageNamed:@"navigationButtonReturn"] highImage:[UIImage imageNamed:@"navigationButtonReturnClick"] target:self
                                                                                      action:@selector(back) title:@"返回"];
    }
    //正真的跳转
    [super pushViewController:viewController animated:YES];
}

// <_UINavigationInteractiveTransition: 0x7f9c948302a0>:手势代理

/*
 UIPanGestureRecognizer
 
 UIScreenEdgePanGestureRecognizer:导航滑动手势
 target=<_UINavigationInteractiveTransition 0x7fdc4a740440>)
 action=handleNavigationTransition:
 
 
 <UIScreenEdgePanGestureRecognizer: 0x7fdc4a740120; state = Possible; delaysTouchesBegan = YES; view = <UILayoutContainerView 0x7fdc4a73e690>; target= <(action=handleNavigationTransition:, >>
 */
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    return self.childViewControllers.count > 1;
}

-(void)back {
    [self popViewControllerAnimated:YES];
}
@end
