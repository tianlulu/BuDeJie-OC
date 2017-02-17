//
//  LuLuTabBartViewController.m
//  BuDejIE
//
//  Created by lushuishasha on 2016/10/11.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "LuLuTabBartViewController.h"
#import "LuLuMyViewController.h"
#import "LuLuNewViewController.h"
#import "LuLuEsenseViewController.h"
#import "LuLuPublishViewController.h"
#import "LuLuFriendTrendViewController.h"
#import "UIImage+image.h"
#import "LuLutabBar.h"
#import "TLNavgationController.h"

@interface LuLuTabBartViewController ()
@end

@implementation LuLuTabBartViewController
//1.图片太大，系统帮忙渲染
- (void)viewDidLoad {
    [super viewDidLoad];
    //自定义tabbar
    //实际上系统的tabbar添加子控制器，设置按钮的操作都是在viewWillAppear里面实现的，viewWillAppear是在viewDidLoad后面实现
    [self setupAllChildrenViewController];
    
    [self setupTabbarItems];
    
    //而在此时，系统的tabBar还是空的，所以替换系统的tabbar是安全的，不会用一个空的tabbar替换已经加了按钮的tabbar
    [self setupTabBar];
    NSLog(@"%@",self.tabBar.subviews);
}

- (void) setupTabBar {
    LuLutabBar *tabBar = [[LuLutabBar alloc]init];
    [self setValue:tabBar forKeyPath:@"tabBar"];
}

//只会调用一次(还有initialize方法)
+ (void)load {
    // 设置按钮选中标题的颜色:富文本:描述一个文字颜色,字体,阴影,空心,图文混排
    //appearance 创建一个描述文本属性的字典
    UITabBarItem *item = [UITabBarItem appearance]; //获取整个应用程序下的UITabBarItem
    NSMutableDictionary *attrs = [NSMutableDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],NSForegroundColorAttributeName,nil];
    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
    // 设置字体尺寸:只有设置正常状态下,才会有效果
    NSMutableDictionary *textDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:13],NSFontAttributeName, nil];
    [item setTitleTextAttributes:textDic forState:UIControlStateNormal];
    
    //哪些属性可以通过appearance的设置
}

//可能会调用多次
+ (void)initialize {
    if (self == [LuLuTabBartViewController class]) {
    }
}

- (void) setupAllChildrenViewController {
    //精华
    LuLuEsenseViewController *essensevc = [[LuLuEsenseViewController alloc]init];
    TLNavgationController *nav1 = [[TLNavgationController alloc]initWithRootViewController:essensevc];
    [self addChildViewController:nav1];
    
    // 新帖
    LuLuNewViewController *newVc = [[LuLuNewViewController alloc]init];
    TLNavgationController *nav2 = [[TLNavgationController alloc]initWithRootViewController:newVc];
    [self addChildViewController:nav2];
    
//    //发布
//    LuLuPublishViewController *pubVc = [[LuLuPublishViewController alloc]init];
//    [self addChildViewController:pubVc];
    
    // 关注
    LuLuFriendTrendViewController *frendtrendVc = [[LuLuFriendTrendViewController alloc]init];
    TLNavgationController *nav3 = [[TLNavgationController alloc]initWithRootViewController:frendtrendVc];
    [self addChildViewController:nav3];
    
    //我
    LuLuMyViewController *menuVc = [[LuLuMyViewController alloc]init];
    TLNavgationController *nav4 = [[TLNavgationController alloc]initWithRootViewController:menuVc];
    [self addChildViewController:nav4];
}



-(void) setupTabbarItems {
     //设置tabbar按钮
     // 0:nav
     TLNavgationController *nav1 = self.childViewControllers[0];
     nav1.tabBarItem.title = @"精华";
     nav1.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
     nav1.tabBarItem.selectedImage = [UIImage RenderingImageWithName:@"tabBar_essence_click_icon"];
 
     // 1:新帖
     TLNavgationController *nav2 = self.childViewControllers[1];
     nav2.tabBarItem.title = @"新帖";
     nav2.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
     nav2.tabBarItem.selectedImage = [UIImage RenderingImageWithName:@"tabBar_new_click_icon"];
    
//     // 2:发布
//     LuLuPublishViewController *pubVc = self.childViewControllers[2];
//    pubVc.tabBarItem.image = [UIImage imageNamed:@"tabBar_publish_icon"];
//    pubVc.tabBarItem.selectedImage = [UIImage RenderingImageWithName:@"tabBar_publish_click_icon"];
    //设置图片的位置
   // pubVc.tabBarItem.imageInsets = UIEdgeInsetsMake(7, 0, -7, 0);
    
     // 3.关注
     TLNavgationController *nav3 = self.childViewControllers[2];
     nav3.tabBarItem.title = @"关注";
     nav3.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
     nav3.tabBarItem.selectedImage = [UIImage RenderingImageWithName:@"tabBar_friendTrends_click_icon"];
    
     // 4.我
     TLNavgationController *nav4 = self.childViewControllers[3];
     nav4.tabBarItem.title = @"我";
     nav4.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
     nav4.tabBarItem.selectedImage = [UIImage RenderingImageWithName:@"tabBar_me_click_icon"];
}
@end

