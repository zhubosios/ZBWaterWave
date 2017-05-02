//
//  ZBWaveView.h
//  ZBwaterWaveDemo
//
//  Created by tankjoy on 17/5/2.
//  Copyright © 2017年 zhubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZBWaveView : UIView

@property (nonatomic, assign) CGFloat waveSpeed;
@property (nonatomic, assign) CGFloat waveAmplitude;
@property (nonatomic, strong) UIColor   *waveColor;

- (void)wave;
- (void)stop;

@end
