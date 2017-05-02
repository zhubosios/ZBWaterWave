//
//  UIColor+WFColor.h
//  WorkplaceFinance
//
//  Created by tankjoy on 17/4/26.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import <UIKit/UIKit.h>


//颜色值处理
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define  UIColorFromRGBA(rgbValue,aalpha)   [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(float)aalpha]
#define COLOR(R, G, B) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0]
#define COLORA(R,G,B,A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]



//常用颜色值
#define WHITE [UIColor whiteColor]
#define Black [UIColor blackColor]
#define BackBaseColor COLOR(245, 245, 245)

#define MainBlackColor UIColorFromRGB(0X5f5f5f)
#define MainColor UIColorFromRGB(0x44cc8a)
#define MainBgGrayColor UIColorFromRGB(0Xf1f1f1)
#define MainBtnRedColor UIColorFromRGB(0Xf86f5f)
#define MainBtnBlueColor UIColorFromRGB(0X4f94f3)
#define MainBlueColor UIColorFromRGB(0X65c7c7)
#define MainDarkGreenColor UIColorFromRGB(0X8abd7a)
#define MainGreenColor UIColorFromRGB(0X91c41f)

#define MainRedColor2 [UIColor colorWithRed:248/255.0 green:109.0/255.0 blue:95/255.0 alpha:1.0f]

#define MainGrayOrangeColor [UIColor colorWithRed:243/255.0 green:234/255.0 blue:226/255.0 alpha:1.0]
#define MainLightOrangeColor [UIColor colorWithRed:251/255.0 green:248/255.0 blue:245/255.0 alpha:1.0]
#define MainTabGreenColor  [UIColor colorWithRed:93/255.0 green:184/255.0 blue:187/255.0 alpha:1.0]
#define MainDarkBrownColor [UIColor colorWithRed:149/255.0 green:135/255.0 blue:103/255.0 alpha:1.0]
#define MainRedColor [UIColor colorWithRed:249/255.0 green:98/255.0 blue:67/255.0 alpha:1.0]
#define MainGrayColor UIColorFromRGB(0Xaeaeae)
#define MainLightGrayColor [UIColor colorWithRed:234/255.0 green:234/255.0 blue:234/255.0 alpha:1.0f]
#define ChartGrayColor [UIColor colorWithRed:215/255.0 green:215/255.0 blue:215/255.0 alpha:1.0f]
#define MessageTagColor [UIColor colorWithRed:254/255.0 green:122/255.0 blue:14/255.0 alpha:1.0f]

#define kPlaceHoderImage createImageWithColor(UIColorFromRGB(0xf7f7f7),CGSizeMake(1,1))

#define CellHiligt              UIColorFromRGB(0xDFFB90)  //A0CC1E

#define VIEW_BACKGROUND_COLOR   UIColorFromRGB(0xf2f2f2)//view的背景色
#define CELL_SEPARATOR_COLOR    UIColorFromRGB(0xf2f2f2)//分割线的颜色,3.0以前是cccccc
#define NAVIGATIONITEM_TITLE_COLOR    UIColorFromRGB(0x333333)//导航栏标题颜色
#define DEFAULT_GREEN_COLOR    UIColorFromRGB(0xFF5656) //默认的绿色,3.0版本改成整体色调为pink
#define TITLE_COLOR    UIColorFromRGB(0x333333)//cell中一级标题颜色
#define TITLE_COLOR_6C    UIColorFromRGB(0xcccccc)
#define SUB_TITLE_COLOR    UIColorFromRGB(0x999999)//cell中子标题颜色

@interface UIColor (WFColor)

///nav背静颜色
+ (UIColor *)navBackgroundColor;

/// 黑色背景颜色 用于选择标签视图
+ (UIColor *)blackBackgroundColor;

/// 灰色分割线颜色
+ (UIColor *)grayLineColor;

#pragma mark - Font Color

/// 白色标题字体颜色
+ (UIColor *)whiteTitleFontColor;

/// 提示展位 白色字体颜色
+ (UIColor *)whitePlaceholderTitleColor;

/// 搜索框 字体颜色
+ (UIColor *)whiteSearchTitleColor;


#pragma mark - Version 1.6

/// 绿色
+ (UIColor *)mv_greenColor;

/// 红色
+ (UIColor *)mv_redColor;

/// 灰色 3
+ (UIColor *)mv_grayColor3;

/// 灰色 5
+ (UIColor *)mv_grayColor5;

/// 灰色 6
+ (UIColor *)mv_grayColor6;

/// 灰色 9
+ (UIColor *)mv_grayColor9;

/// 灰色 c
+ (UIColor *)mv_grayColorC;

/// 灰色 e
+ (UIColor *)mv_grayColorE;

/// 灰色 F2
+ (UIColor *)mv_grayColorF2;

/// 灰色d4
+ (UIColor *)mv_grayColorD4;

/// 橙色
+ (UIColor *)mv_orangeColor;


@end
