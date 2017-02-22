//
//  TLAdViewController.m
//  BuDejIE
//
//  Created by lushuishasha on 2017/2/22.
//  Copyright © 2017年 lushuishasha. All rights reserved.
//

#import "TLAdViewController.h"

@interface TLAdViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *launchImageView;
@property (weak, nonatomic) IBOutlet UIView *adContainerView;
@end

@implementation TLAdViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    //设置启动图片
    [self setupLaunchImage];
}

- (void)setupLaunchImage{
    if (iPhone4) {
      self.launchImageView.image = [UIImage imageNamed:@"LaunchImage-700"];
    } else if(iPhone5){
      self.launchImageView.image = [UIImage imageNamed:@"LaunchImage-568h"];
    } else if(iPhone6){
        self.launchImageView.image = [UIImage imageNamed:@"LaunchImage-800-667h"];
    } else if(iPhone6P){
        self.launchImageView.image = [UIImage imageNamed:@"LaunchImage-800-Portrait-736h@3x"];
    }
}
@end
