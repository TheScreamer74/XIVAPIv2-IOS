//
//  AppButton.swift
//  NeufMoisEtMoi
//
//  Created by MacBook on 11/4/19.
//

import Foundation
import UIKit

@IBDesignable
class AppButton: UIButton {
    
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
            guard let bc = layer.borderColor else { return nil }
            return UIColor(cgColor: bc)
        }
        set { layer.borderColor = newValue?.cgColor }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if layerHeightDependantCornerRadiusMultiplier > 0 {
            layer.cornerRadius = frame.height * layerHeightDependantCornerRadiusMultiplier
        }
    }
    
}

class AppButtonPrimary: AppButton {}

class AppButtonSecondaryBordered: AppButton {}
