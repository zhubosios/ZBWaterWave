//
//  UIView+WFFrame.h
//  WorkplaceFinance
//
//  Created by tankjoy on 17/4/25.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (WFFrame)
@property (assign, nonatomic) CGFloat wf_x;
@property (assign, nonatomic) CGFloat wf_y;
@property (assign, nonatomic) CGFloat wf_w;
@property (assign, nonatomic) CGFloat wf_h;
@property (assign, nonatomic) CGSize wf_size;
@property (assign, nonatomic) CGPoint wf_origin;
@end
