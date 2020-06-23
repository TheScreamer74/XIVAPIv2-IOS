// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/6/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import UIKit

@IBDesignable
class AppTabBar: UITabBar {
    
    @IBInspectable
    dynamic var selectionIndicatorImageColor: UIColor?
    
    private var itemCount: Int { items?.count ?? 1 }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        selectionIndicatorImageColor.map {
            selectionIndicatorImage = UIImage(color: $0, size: CGSize(width: self.frame.width / CGFloat(itemCount), height: self.frame.height))
        }
    }
}
