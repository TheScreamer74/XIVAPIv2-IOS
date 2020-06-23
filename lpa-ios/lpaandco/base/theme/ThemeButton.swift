// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/3/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import UIKit

@IBDesignable
class ThemeButton: UIButton, TextModifiable {
    
    @IBInspectable
    dynamic var layerCornerRadius: CGFloat {
        get { layer.cornerRadius }
        set { layer.cornerRadius = newValue }
    }
    
    @IBInspectable
    dynamic var layerHeightDependantCornerRadiusMultiplier: CGFloat = 0
    
    @IBInspectable
    dynamic var layerBorderWidth: CGFloat {
        get { layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    @IBInspectable
    dynamic var layerBorderColor: UIColor? {
        get {
            guard let bColor = layer.borderColor else { return nil }
            return UIColor(cgColor: bColor)
        }
        set { layer.borderColor = newValue?.cgColor }
    }
    
    @IBInspectable
    dynamic var allCaps: Bool = false
    
    @IBInspectable
    dynamic var adjustsFontSizeToFitWidth: Bool = true
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if layerHeightDependantCornerRadiusMultiplier > 0 {
            layer.cornerRadius = frame.height * layerHeightDependantCornerRadiusMultiplier
        }
        
        if let underlineColor = underlineColor {
            guard let buttonTitle = title(for: .normal) else { return }
            
            let attributes: [NSAttributedString.Key: Any] = [.underlineColor: underlineColor,
                                                              .underlineStyle: NSUnderlineStyle.thick.rawValue]
            let attributedTitle = NSAttributedString(string: buttonTitle, attributes: attributes)
            
            setAttributedTitle(attributedTitle, for: .normal)
        }
        
        if adjustsFontSizeToFitWidth {
            titleLabel?.adjustsFontSizeToFitWidth = true
        }
    }
    
    override func setTitle(_ title: String?, for state: UIControl.State) {
        if allCaps {
            super.setTitle(title?.uppercased(), for: state)
        } else {
            super.setTitle(title, for: state)
        }
    }
    
    @IBInspectable
    dynamic var titleColor: UIColor? {
        get {
            guard let color = titleColor(for: .normal) else { return nil }
            return color
        }
        set {
            setTitleColor(newValue, for: .normal)
        }
    }
    
    @IBInspectable
    //swiftlint:disable valid_ibinspectable
    dynamic var titleFont: UIFont? {
        get { titleLabel?.font }
        set {
            titleLabel?.font = newValue
        }
    }
    //swiftlint:enable valid_ibinspectable
    
    @IBInspectable
    dynamic var underlineColor: UIColor?
}
