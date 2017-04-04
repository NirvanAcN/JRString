import Foundation
import UIKit

// MARK: - 图片转换
extension String {
    /// 图片转换
    var JRImageValue: UIImage! {
        return UIImage.init(named: self)
    }
}
