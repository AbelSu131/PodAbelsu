//
//  Cell.m
//  PodAbelsu
//
//  Created by abel on 15/11/11.
//  Copyright © 2015年 abel. All rights reserved.
//

#import "Cell.h"
#import "Menu.h"
#import <UIImageView+WebCache.h>

@interface Cell()
@property (weak, nonatomic) IBOutlet UIImageView *albumsImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLable;
@property (weak, nonatomic) IBOutlet UILabel *ingredientsLabel;


@end

@implementation Cell

- (void)setMenu:(Menu *)menu{
    _menu = menu;
    
    //利用SDWebImage框架加载图片资源
    [self.albumsImageView sd_setImageWithURL:[NSURL URLWithString:menu.albums]];
    
    //设置标题
    self.titleLable.text = menu.title;
    
    //设置材料数据
    self.ingredientsLabel.text = menu.ingredients;
     
}

@end
