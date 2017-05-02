//
//  UIColor+WFColor.m
//  WorkplaceFinance
//
//  Created by tankjoy on 17/4/26.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import "UIColor+WFColor.h"

@implementation UIColor (WFColor)
///nav背静颜色
+ (UIColor *)navBackgroundColor {
    return UIColorFromRGB(0xff4444);
}

/// 黑色背景颜色 用于选择标签视图
+ (UIColor *)blackBackgroundColor {
    return UIColorFromRGB(0x242424);
}

/// 灰色分割线颜色
+ (UIColor *)grayLineColor {
    return UIColorFromRGB(0x474747);
}


#pragma mark - Font Color

/// 白色标题字体颜色
+ (UIColor *)whiteTitleFontColor {
    return UIColorFromRGB(0xFFFFFF);
}

/// 提示展位 白色字体颜色
+ (UIColor *)whitePlaceholderTitleColor {
    return UIColorFromRGB(0xcccccc);
}

/// 搜索框 字体颜色
+ (UIColor *)whiteSearchTitleColor {
    return UIColorFromRGB(0x333333);
}

#pragma mark - Version 1.6

/// 绿色
+ (UIColor *)mv_greenColor {
    return UIColorFromRGB(0x91c41f);
}

/// 红色
+ (UIColor *)mv_redColor {
    return UIColorFromRGB(0xFF4444);
}

/// 灰色 3
+ (UIColor *)mv_grayColor3 {
    return UIColorFromRGB(0x333333);
}

/// 灰色 5
+ (UIColor *)mv_grayColor5 {
    return UIColorFromRGB(0x555555);
}

/// 灰色 6
+ (UIColor *)mv_grayColor6 {
    return UIColorFromRGB(0x666666);
}

/// 灰色 9
+ (UIColor *)mv_grayColor9 {
    return UIColorFromRGB(0x999999);
}

/// 灰色 c
+ (UIColor *)mv_grayColorC {
    return UIColorFromRGB(0xcccccc);
}

/// 灰色 e
+ (UIColor *)mv_grayColorE {
    return UIColorFromRGB(0xeeeeee);
}

/// 灰色 F2
+ (UIColor *)mv_grayColorF2 {
    return UIColorFromRGB(0xf2f2f2);
}

/// 灰色 d4
+ (UIColor *)mv_grayColorD4 {
    return UIColorFromRGB(0xd4d4d4);
}

/// 橙色
+ (UIColor *)mv_orangeColor {
    return UIColorFromRGB(0xffa000);//[UIColor colorWithRed:200.0f/255.0f green:50./255.0f blue:5.0f/255.0f alpha:0.5f];//
}


@end
