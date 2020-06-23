// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/2/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(hex: Int) {
        self.init(hexWithAlpha: hex | 0xff000000)
    }
    
    convenience init(hexWithAlpha hex: Int) {
        let blue = CGFloat(hex & 0xff)
        let green = CGFloat((hex >> 8) & 0xff)
        let red = CGFloat((hex >> 16) & 0xff)
        let alpha = CGFloat((hex >> 24) & 0xff)
        self.init(red: CGFloat(red/255.0), green: CGFloat(green/255.0), blue: CGFloat(blue/255.0), alpha: CGFloat(alpha/255.0))
    }
    
}
