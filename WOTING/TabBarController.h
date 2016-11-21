//
//  TabBarController.h
//  LimiteFree
//
//  Created by jq on 16/1/19.
//  Copyright © 2016年 jq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabBarController : UITabBarController

- (instancetype)initWithControllerNames:(NSArray *)namesArr andTitles:(NSArray *)titlesArr andNormalImages:(NSArray *)normalImageArr andSelectedImages:(NSArray *)selectedImageArr;
//namesArr 每一个模块显示的根控制器
//titlesArr 主题
//normalImageArr: 普通状态下的图片
//selecteImageArr: 选中状态下的图片
    

@end
