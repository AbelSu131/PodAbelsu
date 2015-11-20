//
//  ASTabBarController.m
//  PodAbelsu
//
//  Created by abel on 15/11/11.
//  Copyright © 2015年 abel. All rights reserved.
//

#import "ASTabBarController.h"
#import "HomeViewController.h"
#import "ListViewController.h"
#import "MineViewController.h"

@interface ASTabBarController ()

@end

@implementation ASTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.tintColor = [UIColor colorWithRed:0.38 green:0.28 blue:0.64 alpha:1];
    //1.
    HomeViewController *oneVC = [[HomeViewController alloc]init];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:oneVC];
    nav1.title = @"首页";
    nav1.navigationBar.barTintColor = [UIColor colorWithRed:0.45 green:0.34 blue:0.75 alpha:1];
    nav1.tabBarItem.image = [UIImage imageNamed:@"tab_1"];
    oneVC.navigationItem.title = @"首页";
    oneVC.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:nav1];
    //把UINavigationController交给UITabBarController管理
    
    
    ListViewController *twoVC = [[ListViewController alloc]init];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:twoVC];
    nav2.title = @"列表";
    nav2.navigationBar.barTintColor = [UIColor colorWithRed:0.45 green:0.34 blue:0.75 alpha:1];
    nav2.tabBarItem.image = [UIImage imageNamed:@"tab_2"];
    twoVC.navigationItem.title = @"列表";
    twoVC.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:nav2];
    
    
    MineViewController *threeVC = [[MineViewController alloc]init];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:threeVC];
    nav3.title = @"我的";
    nav3.navigationBar.barTintColor = [UIColor colorWithRed:0.45 green:0.34 blue:0.75 alpha:1];
    nav3.tabBarItem.image = [UIImage imageNamed:@"tab_3"];
    threeVC.navigationItem.title = @"我的";
    
    [self addChildViewController:nav3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
