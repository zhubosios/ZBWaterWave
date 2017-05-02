//
//  UIFont+WFFont.m
//  WorkplaceFinance
//
//  Created by tankjoy on 17/4/26.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import "UIFont+WFFont.h"

@implementation UIFont (WFFont)

/// 根据字号 返回字体   统一处理
+ (instancetype)mv_fontWithSize:(CGFloat)size {
    UIFont *resultFont = [UIFont systemFontOfSize:size];
    return resultFont;
}

/// 根据字号 返回斜体
+ (instancetype)mv_italicFontWithSize:(CGFloat)size {
    UIFont *resultFont = [UIFont italicSystemFontOfSize:size];
    return resultFont;
}

/// 根据字号 返回黑体（粗体）
+ (instancetype)mv_boldFontWithSize:(CGFloat)size {
    UIFont *resultFont = [UIFont boldSystemFontOfSize:size];
    return resultFont;
}

/// 直播聊天 字体
+ (instancetype)mv_chatFontWithSize:(CGFloat)size {
    UIFont *resultFont = [UIFont fontWithName:@"Helvetica-Bold" size:size];
    return resultFont;
}

@end
