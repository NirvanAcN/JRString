import Foundation
import JREncryption

// MARK: - MD5加密
public extension String {
    /// MD5 32位加密
    public var JRMD5Bit32Value: String! {
        return JRMD5Bit32String()
    }
    
    /// MD5 16位加密
    public var JRMD5Bit16Value: String! {
        return JRMD5Bit16String()
    }
    
    /// MD5 32位加密
    ///
    /// - Returns: result
    public func JRMD5Bit32String() -> String! {
        let str = NSString.init(string: self)
        return str.md5Base32()
//        let str = cString(using: String.Encoding.utf8)
//        let strLen = CUnsignedInt(lengthOfBytes(using: String.Encoding.utf8))
//        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
//        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
//        CC_MD5(str!, strLen, result)
//        let hash = NSMutableString()
//        for i in 0 ..< digestLen {
//            hash.appendFormat("%02x", result[i])
//        }
//        result.deinitialize()
//        return String(format: hash as String)
    }
    
    /// MD5 16位加密
    ///
    /// - Returns: result
    public func JRMD5Bit16String() -> String! {
        let str = NSString.init(string: self)
        return str.md5Base16()
//        guard let md5_32 = JRMD5Bit32String() else { return nil }
//        let md5_characters = md5_32.characters
//        return md5_32.substring(with: md5_characters.index(md5_32.startIndex, offsetBy: 8)..<md5_characters.index(md5_32.startIndex, offsetBy: 8 + 16))
    }
}
