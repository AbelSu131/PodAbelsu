//
//  Cell.h
//  PodAbelsu
//
//  Created by abel on 15/11/11.
//  Copyright © 2015年 abel. All rights reserved.
//
//在Cell.h中定义一个模型属性
//用于供外界（HomeViewController）访问并传递模型进来

#import <UIKit/UIKit.h>

@class Menu;

@interface Cell : UITableViewCell

/** 菜单模型 */
@property (strong,nonatomic) Menu *menu;


@end
