import Foundation
import UIKit

// MARK: - 图片转换
public extension String {
    /// 图片转换
    public var JRImageValue: UIImage! {
        return UIImage.init(named: self)
    }
}
