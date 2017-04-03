//
//  JRString.swift
//  JRString
//
//  Created by 京睿 on 2017/4/3.
//  Copyright © 2017年 京睿. All rights reserved.
//

import Foundation

// MARK: - MD5加密
public extension String {
    
    func JRMD5Bit32String() -> String! {
        let str = cString(using: String.Encoding.utf8)
        let strLen = CUnsignedInt(lengthOfBytes(using: String.Encoding.utf8))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
        CC_MD5(str!, strLen, result)
        let hash = NSMutableString()
        for i in 0 ..< digestLen {
            hash.appendFormat("%02x", result[i])
        }
        result.deinitialize()
        return String(format: hash as String)
    }
    
//    func ir_md5_16String() -> String! {
//        let md5_32 = ir_md5_32String()
//        
//        return md5_32!.substring(with: md5_32!.characters.index(md5_32!.startIndex, offsetBy: 8)..<md5_32!.characters.index(md5_32!.endIndex, offsetBy: -9))
//        
//    }
    
}
