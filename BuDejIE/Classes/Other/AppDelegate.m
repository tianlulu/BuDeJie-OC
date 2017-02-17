//
//  AppDelegate.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/10/9.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "AppDelegate.h"
#import "LuLuTabBartViewController.h"


/*
 优先级:LaunchScreen > LaunchImage
 在xcode配置了,不起作用 1.清空xcode缓存 2.直接删掉程序 重新运行
 如果是通过LaunchImage设置启动界面,那么屏幕的可视范围由图片决定
 注意:如果使用LaunchImage,必须让你的美工提供各种尺寸的启动图片
 
 LaunchScreen:Xcode6开始才有
 LaunchScreen好处:1.自动识别当前真机或者模拟器的尺寸 2.只要让美工提供一个可拉伸图片
 3.展示更多东西
 
 LaunchScreen底层实现:把LaunchScreen截屏,生成一张图片.作为启动界面
 */
@interface AppDelegate ()
@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    LuLuTabBartViewController *taBbarVc = [[LuLuTabBartViewController alloc]init];
    self.window.rootViewController = taBbarVc;
    //添加自控制器(5个) ->自定义控制器
    [self.window makeKeyAndVisible];
    return YES;
}
@end
