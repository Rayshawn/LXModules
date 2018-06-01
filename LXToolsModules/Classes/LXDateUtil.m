//
//  LXDateUtil.m
//  LXUtilsModule_Example
//
//  Created by shawn on 2018/6/1.
//  Copyright © 2018年 ccsxlx@163.com. All rights reserved.
//

#import "LXDateUtil.h"

@implementation LXDateUtil
+ (NSString*)LX_timeStampFromNow {
    NSDate* date = [NSDate date];
    NSTimeInterval a=[date timeIntervalSince1970]*1000;
    NSString *result = [NSString stringWithFormat:@"%.0f", a];
    return result;
}
+ (NSString*)LX_stringFromTimeStamp:(NSString*)timeStamp format:(NSString*)formatStr {
    if (!formatStr || formatStr.length == 0) {
        formatStr = @"YYYY-MM-dd";
    }
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    formatter.timeZone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:formatStr];
    // 毫秒值转化为秒
    NSDate* date = [NSDate dateWithTimeIntervalSince1970:[timeStamp doubleValue]/ 1000.0];
    NSString* dateString = [formatter stringFromDate:date];
    return dateString;
}
+ (NSString*)LX_timeStampFromString:(NSString*)timeString {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd"];
    
    NSDate* date = [formatter dateFromString:timeString];
    NSTimeInterval a=[date timeIntervalSince1970]*1000;
    NSString *result = [NSString stringWithFormat:@"%.0f", a];
    return result;
}
+ (NSString*)LX_timeStampFromDate:(NSDate*)date {
    NSTimeInterval a=[date timeIntervalSince1970]*1000;
    NSString *result = [NSString stringWithFormat:@"%.0f", a];
    return result;
}
@end
