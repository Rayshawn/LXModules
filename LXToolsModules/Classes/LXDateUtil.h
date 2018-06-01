//
//  LXDateUtil.h
//  LXUtilsModule_Example
//
//  Created by shawn on 2018/6/1.
//  Copyright © 2018年 ccsxlx@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LXDateUtil : NSObject
/**
 当前时间戳
 */
+ (NSString*)LX_timeStampFromNow;
/**
 时间戳转时间  Asia/Shanghai 时间
 @param timeStamp 时间戳 13位
 @param formatStr 时间格式默认为 @“YYYY-MM-dd”
 @return 返回对应的时间格式
 */
+ (NSString*)LX_stringFromTimeStamp:(NSString*)timeStamp format:(NSString*)formatStr;

/**
 时间转时间戳  Asia/Shanghai 时间   13位时间戳
 @param timeString 时间
 */
+ (NSString*)LX_timeStampFromString:(NSString*)timeString;

/**
 date转时间戳 13位
 */
+ (NSString*)LX_timeStampFromDate:(NSDate*)date;
@end
