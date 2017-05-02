//
//  TwoController.m
//  Workplace Finance
//
//  Created by tankjoy on 17/4/18.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import "TwoController.h"
#import "JZNavigationExtension.h"
@interface TwoController ()

@end

@implementation TwoController

- (void)viewDidLoad {
    [super viewDidLoad];


    self.navigationItem.title = @"测试";
    self.jz_wantsNavigationBarVisible = true;
    self.view.backgroundColor = [UIColor greenColor];
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
