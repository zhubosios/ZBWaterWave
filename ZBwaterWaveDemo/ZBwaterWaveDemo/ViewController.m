//
//  ViewController.m
//  ZBwaterWaveDemo
//
//  Created by tankjoy on 17/5/2.
//  Copyright © 2017年 zhubo. All rights reserved.
//

#import "ViewController.h"
#import "ZBWaveView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    ZBWaveView *waveView = [[ZBWaveView alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 200)];
    waveView.waveSpeed = 6.0f;
    waveView.waveAmplitude = 6.0f;
    waveView.waveColor = [UIColor cyanColor];
    [waveView wave];
    [self.view addSubview:waveView];
    
    
    
    
}




@end
