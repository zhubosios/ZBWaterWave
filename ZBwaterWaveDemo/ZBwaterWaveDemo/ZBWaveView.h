//
//  ZBWaveView.h
//  ZBwaterWaveDemo
//
//  Created by tankjoy on 17/5/2.
//  Copyright © 2017年 zhubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZBWaveView : UIView
@property (nonatomic, assign) CGFloat waveSpeed;     // Default as 6
@property (nonatomic, assign) CGFloat waveAmplitude; // Default as 6
@property (nonatomic, strong) UIColor   *waveColor; // Default as [UIColor blueColor]

- (void)wave;
- (void)stop;

@end
