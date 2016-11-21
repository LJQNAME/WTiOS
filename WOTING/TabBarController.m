//
//  TabBarController.m
//  LimiteFree
//
//  Created by jq on 16/1/19.
//  Copyright © 2016年 jq. All rights reserved.
//

#import "TabBarController.h"
#import "Factory.h"

@interface TabBarController ()

@property (nonatomic, strong) NSMutableArray *namesArr;
@property (nonatomic, strong) NSMutableArray *titlesArr;
@property (nonatomic, strong) NSMutableArray *normalImageArr;
@property (nonatomic, strong) NSMutableArray *selectedImageArr;

@end

@implementation TabBarController

#pragma mark -- 自定义构造方法
- (instancetype)initWithControllerNames:(NSArray *)namesArr andTitles:(NSArray *)titlesArr andNormalImages:(NSArray *)normalImageArr andSelectedImages:(NSArray *)selectedImageArr{
    
    if (self = [super init]) {
        
        //[注意] 四个参数 count必须相等
        //接受数据
        _namesArr = [NSMutableArray arrayWithArray:namesArr];
        _titlesArr = [NSMutableArray arrayWithArray:titlesArr];
        _normalImageArr = [NSMutableArray arrayWithArray:normalImageArr];
        _selectedImageArr = [NSMutableArray arrayWithArray:selectedImageArr];
    }
    
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //将传递的参数 调用Factory方法 创建出导航控制器 放入分栏中管理
    //[self.tabBar setBackgroundImage:[UIImage imageNamed:@"tabbar_bg.png"]];
}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [self createNavigationControllers];
    
}

#pragma mark -- 创建导航控制器
- (void)createNavigationControllers{
    
    NSMutableArray *nacArr = [NSMutableArray array];
    
    for (int i = 0; i < _namesArr.count; i++) {
        
        UINavigationController *nac = [Factory createNavigationWithRootViewController:_namesArr[i] andTitle:_titlesArr[i] andNormalImage:_normalImageArr[i] andSeletedImage:_selectedImageArr[i]];
        
        [nacArr addObject:nac];
    }
    
    self.viewControllers = [nacArr copy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
