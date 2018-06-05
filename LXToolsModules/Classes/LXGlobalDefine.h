//
//  LXGlobalDefine.h
//  LXToolsModules
//
//  Created by shawn on 2018/6/3.
//  Copyright © 2018年 ccsxlx@163.com. All rights reserved.
//

#ifndef LXGlobalDefine_h
#define LXGlobalDefine_h

// 定义一个弱引用
#define WeakSelf(weakSelf)  __weak __typeof(&*self)weakSelf = self
// 定义block中的强引用、之前必须已经定义了self的弱引用
#define StrongSelf(strongSelf)  __strong __typeof(&*self)strongSelf = weakSelf;
// 打印调试
#ifdef DEBUG
#define LXLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#define LXLog(...)
#endif

// 系统版本号
#define SYSTEM_IOS_VERSION  [[[UIDevice currentDevice] systemVersion] doubleValue]
// app version
#define APP_VERSION         [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
// app build version
#define APP_BUILD_VERSION   [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]

///屏幕宽高
#define SCREEN_SIZE ([UIScreen mainScreen].bounds.size)
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

// 是否为iPhone X
#define DEVICE_IS_IPHONEX (SCREEN_WIDTH == 375.f && SCREEN_HEIGHT == 812.f ? YES : NO)
// status bar height
#define DEVICE_STATUS_BAR_HEIGHT (DEVICE_IS_IPHONEX ? 44.f : 20.f)
// 系统的导航栏高度
#define DEVICE_NAVBAR_HEIGHT (DEVICE_IS_IPHONEX ? 88 : 64)
// 系统安全距离，主要是为了适配iPhone X
#define DEVICE_SAFE_BOTTOMMARGIN (DEVICE_IS_IPHONEX ? 34.f : 0.f)

#endif /* LXGlobalDefine_h */
