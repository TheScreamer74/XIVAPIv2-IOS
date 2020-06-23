// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/6/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import UIKit

extension UIImage {
    
    enum AssetIdentifier: String {
        case cross
        case error
        case success
        case step1
        case step2
        case step3
        case eyeIcon
        case warning
        case arrowDown
    }
    
    convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContext(rect.size)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
    
    convenience init!(assetIdentifier: AssetIdentifier) {
        self.init(named: assetIdentifier.rawValue)
    }
}
