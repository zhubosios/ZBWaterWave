//
//  WFConfiginfo.h
//  WorkplaceFinance
//
//  Created by tankjoy on 17/4/25.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#ifndef WFConfiginfo_h
#define WFConfiginfo_h


#ifdef DEBUG //调试
#define XLOG(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);

#define XLOGRECT(rect) XLOG(@"rect[%f, %f, %f, %f]", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
#else
#define XLOG(fmt,...) {}
#define XLOGRECT(rect) {}
#endif


// 随机色
#define HWRandomColor HWColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))
//机型判断
#define IS_IPHONE4      (([[UIScreen mainScreen] bounds].size.height - 480)?NO:YES)
#define IS_IPHONE5      (([[UIScreen mainScreen] bounds].size.height - 568)?NO:YES)
#define IS_IPHONE6      (([[UIScreen mainScreen] bounds].size.width - 375)?NO:YES)
#define IS_IPHONE6_PLUS (([[UIScreen mainScreen] bounds].size.width - 414)?NO:YES)

#define IS_OS_5_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 5.0)
#define IS_OS_6_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 6.0)
#define IS_OS_7_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
#define IS_OS_8_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)


#define CHECK_VALID_STRING(x)                       (x && [x isKindOfClass:[NSString class]] && [x length])
#define CHECK_VALID_NUMBER(x)                       (x && [x isKindOfClass:[NSNumber class]])
#define CHECK_VALID_ARRAY(x)                        (x && [x isKindOfClass:[NSArray class]] && [x count])
#define CHECK_VALID_DICTIONARY(x)                   (x && [x isKindOfClass:[NSDictionary class]] && [x count])
#define CHECK_VALID_SET(x)                          (x && [x isKindOfClass:[NSSet class]] && [x count])
#define CHECK_VALID_DATA(x)                         (x && [x isKindOfClass:[NSData class]] && [x length])
#define CHECK_VALID_DELEGATE(d, s)                  (d && [d respondsToSelector:s])
#define CHECK_STRING_ISEQUAL(sa, sb)                ((sa == sb) || [sa isEqualToString:sb])


// 屏幕的高度，宽度
#define kAppScreenHeight CGRectGetHeight([[UIScreen mainScreen] bounds])
#define kAppScreenWidth  CGRectGetWidth([[UIScreen mainScreen] bounds])
#define DP(size) (size*(kAppScreenWidth)/320)
#define DPH(size)(size *(kAppScreenHeight/568))

//字体
#define baseFont(size) [UIFont systemFontOfSize:size]


#endif /* WFConfiginfo_h */
