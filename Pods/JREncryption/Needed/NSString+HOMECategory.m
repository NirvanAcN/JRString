//
//  NSString+HOMECategory.m
//  HomeToolsTesr
//
//  Created by mahaomeng on 15/8/13.
//  Copyright (c) 2015年 mahaomeng. All rights reserved.
//

#import "NSString+HOMECategory.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (HOMECategory)

-(NSString *)MD5Base32String
{
    int tmp = CC_MD5_DIGEST_LENGTH;
    const char *cStr = [self UTF8String];
    unsigned char digest[tmp];
    CC_MD5( cStr, (unsigned int)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:tmp * 2];
    for(int i = 0; i < tmp; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

-(NSString *)MD5Base16String
{
    //提取32位MD5散列的中间16位
    NSString *md5_32Bit_String = self.MD5Base32String;
    NSString *result = [[md5_32Bit_String substringToIndex:24] substringFromIndex:8];//即9～25位
    
    return result;
}

@end
