//
//  TLSettingViewController.m
//  BuDejIE
//
//  Created by lushuishasha on 2017/2/21.
//  Copyright © 2017年 lushuishasha. All rights reserved.
//

#import "TLSettingViewController.h"

@interface TLSettingViewController ()
@end

@implementation TLSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设置";
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"jump" style:0 target:self action:@selector(jump)];
    
}

-(void)jump {
    UIViewController *vc = [[UIViewController alloc]init];
    vc.view.backgroundColor = [UIColor redColor];
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
