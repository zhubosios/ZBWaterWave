//
//  UIView+WFFrame.m
//  WorkplaceFinance
//
//  Created by tankjoy on 17/4/25.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import "UIView+WFFrame.h"

@implementation UIView (WFFrame)
- (void)setWf_x:(CGFloat)wf_x
{
    CGRect frame = self.frame;
    frame.origin.x = wf_x;
    self.frame = frame;
}

- (CGFloat)wf_x
{
    return self.frame.origin.x;
}

- (void)setWf_y:(CGFloat)wf_y
{
    CGRect frame = self.frame;
    frame.origin.y = wf_y;
    self.frame = frame;
}

- (CGFloat)wf_y
{
    return self.frame.origin.y;
}

- (void)setWf_w:(CGFloat)wf_w
{
    CGRect frame = self.frame;
    frame.size.width = wf_w;
    self.frame = frame;
}

- (CGFloat)wf_w
{
    return self.frame.size.width;
}

- (void)setWf_h:(CGFloat)wf_h
{
    CGRect frame = self.frame;
    frame.size.height = wf_h;
    self.frame = frame;
}

- (CGFloat)wf_h
{
    return self.frame.size.height;
}

- (void)setWf_size:(CGSize)wf_size
{
    CGRect frame = self.frame;
    frame.size = wf_size;
    self.frame = frame;
}

- (CGSize)wf_size
{
    return self.frame.size;
}

- (void)setWf_origin:(CGPoint)wf_origin
{
    CGRect frame = self.frame;
    frame.origin = wf_origin;
    self.frame = frame;
}

- (CGPoint)wf_origin
{
    return self.frame.origin;
}
@end
