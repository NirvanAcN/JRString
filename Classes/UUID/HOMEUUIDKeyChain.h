//
//  HOMEUUIDKeyChain.h
//  HomeToolsTesr
//
//  Created by mahaomeng on 15/8/12.
//  Copyright (c) 2015年 mahaomeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HOMEUUIDKeyChain : NSObject

// Device Model
+ (NSString *)DeviceModel;

// UUID Value
/** 获得并存储UUID */
+ (NSString*)Value;

// Delete UUID
/** 清除已存储的UUID */
+ (void)Renew;

/** 将信息存储到KeyChain */
+(void)saveUserInfo:(id)userInfo;

/** 读取KeyChain中的信息 */
+(id)getUserInfoFromKeyChain;

/** 删除KeyChain中的信息 */
+(void)deleteUserInfoInKeyChain;

@end
