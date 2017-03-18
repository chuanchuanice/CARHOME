//
//  MyPageVC.m
//  TRProject
//
//  Created by tarena on 2017/1/12.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import "MyPageVC.h"
#import "ViewController.h"
@interface MyPageVC ()

@end

@implementation MyPageVC
-(NSArray<NSString *> *)titles{
    return @[@"最新",@"新闻",@"评测",@"导购",@"行情",@"用车",@"技术",@"文化",@"改装",@"游记"];
}
-(NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController{
    return 10;
}
-(UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index{
    ViewController*vc=[[ViewController  alloc]init];
//    NSDictionary*dicnt= @{@"最新":@0,@"新闻":@1,@"评测":@3,@"导购":@60,@"行情":@2,@"用车":@82,@"技术":@102,@"文化":@97,@"改装":@107,@"游记":@100};
    switch (index) {
        case 0:
            vc.nt=0;

            break;
        case 1:vc.nt=1;

            break;
        case 2:vc.nt=3;
    
            break;
        case 3:vc.nt=60;
            
            break;
        case 4:vc.nt=2;
            
            break;
        case 5:vc.nt=82;
        
            break;
        case 6:vc.nt=102;
            
            break;
        case 7:vc.nt=97;

            break;
        case 8:vc.nt=107;
        
            break;
        default:vc.nt=100;
            
            break;
    }
    
    return vc;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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
