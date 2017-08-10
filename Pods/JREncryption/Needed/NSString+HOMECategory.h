//
//  NSString+HOMECategory.h
//  HomeToolsTesr
//
//  Created by mahaomeng on 15/8/13.
//  Copyright (c) 2015年 mahaomeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (HOMECategory)

/** md5加密
 *32位小写 */
- (NSString *) MD5Base32String;

/** md5加密
 *16位小写 */
- (NSString *) MD5Base16String;


@end
