//
//  WFTabBarController.m
//  WorkplaceFinance
//
//  Created by tankjoy on 17/4/26.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import "WFTabBarController.h"
#import "WFHomeController.h"
#import "WFSafeGuaController.h"
#import "WFMyAccountController.h"
#import "ZMRootNavgationController.h"
@interface WFTabBarController ()

@end

@implementation WFTabBarController

+ (void)initialize
{

    NSMutableDictionary *atts = [NSMutableDictionary dictionary];
    atts[NSFontAttributeName] = baseFont(10);
    atts[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selAtts = [NSMutableDictionary dictionary];
    selAtts[NSFontAttributeName] = baseFont(12);
    selAtts[NSForegroundColorAttributeName] = [UIColor redColor];

    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:atts forState:UIControlStateNormal];
    [item setTitleTextAttributes:selAtts forState:UIControlStateSelected];

}

- (void)viewDidLoad {
    [super viewDidLoad];

    WFHomeController *homeVC = [[WFHomeController alloc]init];
    [self addChildController:homeVC title:@"职金所" image:@"icon_wo" selectedImg:@"icon_wo_s"];
    WFSafeGuaController *safeVC = [[WFSafeGuaController alloc]init];
    [self addChildController:safeVC title:@"安全保障" image:@"icon_wo" selectedImg:@"icon_wo_s"];
    WFMyAccountController *accountVC = [[WFMyAccountController alloc]init];
    [self addChildController:accountVC title:@"我的账户" image:@"icon_wo" selectedImg:@"icon_wo_s"];

   

}

- (void)addChildController:(UIViewController *)vc title:(NSString *)title image:(NSString *)img selectedImg:(NSString *)selImg
{

    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:img];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selImg];
    ZMRootNavgationController *rootNV = [[ZMRootNavgationController alloc]initWithRootViewController:vc];
    
    [self addChildViewController:rootNV];


}

@end
