//
//  WFHomeTableHeaderView.m
//  WorkplaceFinance
//
//  Created by tankjoy on 17/4/25.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import "WFHomeTableHeaderView.h"
#import "KYWaterWaveView.h"
@interface WFHomeTableHeaderView()
@property (weak, nonatomic) IBOutlet KYWaterWaveView *waveView;


@end

@implementation WFHomeTableHeaderView

+ (WFHomeTableHeaderView *)show
{

    WFHomeTableHeaderView *headView = [[[NSBundle mainBundle]loadNibNamed:@"WFHomeTableHeaderView" owner:self options:nil] lastObject];
    headView.waveView.waveSpeed = 6.0f;
    headView.waveView.waveAmplitude = 3.0f;
    headView.waveView.waveColor = COLORA(245, 245, 245, 0.5);
    [headView.waveView wave];
    
    return headView;

}

@end
