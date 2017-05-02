//
//  UIFont+WFFont.h
//  WorkplaceFinance
//
//  Created by tankjoy on 17/4/26.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (WFFont)
/// 根据字号 返回字体   统一处理
+ (instancetype)mv_fontWithSize:(CGFloat)size;

/// 根据字号 返回斜体
+ (instancetype)mv_italicFontWithSize:(CGFloat)size;

/// 根据字号 返回黑体（粗体）
+ (instancetype)mv_boldFontWithSize:(CGFloat)size;

/// 直播聊天 字体
+ (instancetype)mv_chatFontWithSize:(CGFloat)size;



@end
