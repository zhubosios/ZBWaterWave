//
//  WFProportionView.m
//  WorkplaceFinance
//
//  Created by tankjoy on 17/4/25.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import "WFProportionView.h"
@interface WFProportionView()

@property (nonatomic) CAShapeLayer *bgCircleLayer;

@end
@implementation WFProportionView

- (CAShapeLayer *)bgCircleLayer
{
    if (!_bgCircleLayer) {
        
        _bgCircleLayer = [CAShapeLayer layer];
        _bgCircleLayer.frame = self.bounds;
        _bgCircleLayer.fillColor   = [UIColor clearColor].CGColor;
        _bgCircleLayer.strokeColor = [UIColor redColor].CGColor;
        _bgCircleLayer.lineWidth   = 2.0;
        [self.layer addSublayer:_bgCircleLayer];
      

    }

    return _bgCircleLayer;

}


- (void)drawRect:(CGRect)rect {

    CGFloat radius = self.self.bounds.size.width*0.5;
    CGPoint center = CGPointMake(radius, radius);
    UIBezierPath *belowParth = [UIBezierPath bezierPathWithArcCenter:center radius:radius-10 startAngle:-M_PI_2 endAngle:M_PI_2*3 clockwise:YES];
    [[UIColor grayColor] setStroke];
    belowParth.lineWidth = 2;
    [belowParth stroke];

}

- (void)setRate:(CGFloat)rate
{
    _rate = rate;
 
    CGFloat radius = self.bounds.size.width*0.5;
    CGPoint center = CGPointMake(radius, radius);
    CGFloat endA = -M_PI_2 + _rate * M_PI*2;
    
    
    UIBezierPath *parth = [UIBezierPath bezierPathWithArcCenter:center radius:radius-10 startAngle:-M_PI_2 endAngle:endA clockwise:YES];
   
    self.bgCircleLayer.path = parth.CGPath;
    
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.duration  = 1.5;
    animation.fromValue = @0.0f;
    animation.toValue   = @(1.0);
    animation.removedOnCompletion = YES;
    [_bgCircleLayer addAnimation:animation forKey:@"circleAnimation"];

   }

-(void)dealloc
{
    [self.layer removeAllAnimations];
    
}

@end
