//
//  ZMRootNavgationController.m
//  Workplace Finance
//
//  Created by tankjoy on 17/4/18.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import "ZMRootNavgationController.h"
#import "JZNavigationExtension.h"
@interface ZMRootNavgationController ()

@end

@implementation ZMRootNavgationController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.interactivePopGestureRecognizer.enabled = NO;
    self.jz_navigationBarTransitionStyle = JZNavigationBarTransitionStyleDoppelganger;



}


@end
