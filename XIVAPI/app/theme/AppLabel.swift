//
//  AppLabelBodyPrimary.swift
//  NeufMoisEtMoi
//
//  Created by MacBook on 10/3/19.
//

import UIKit

@IBDesignable
class AppLabel: UILabel {
    
    @IBInspectable
    dynamic var layerCornerRadius: CGFloat {
        get { layer.cornerRadius }
        set { layer.cornerRadius = newValue }
    }
    
    @IBInspectable
    dynamic var layerHeightDependantCornerRadiusMultiplier: CGFloat = 0
    
    @IBInspectable
    dynamic var leftContentInset: CGFloat = 0
    
    @IBInspectable
    dynamic var topContentInset: CGFloat = 0
    
    @IBInspectable
    dynamic var rightContentInset: CGFloat = 0
    
    @IBInspectable
    dynamic var bottomContentInset: CGFloat = 0
    
    override func drawText(in rect: CGRect) {
        let padding = UIEdgeInsets(top: topContentInset, left: leftContentInset, bottom: bottomContentInset, right: rightContentInset)
        super.drawText(in: rect.inset(by: padding))
    }
    
    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(
            width: size.width + leftContentInset + rightContentInset,
            height: size.height + topContentInset + bottomContentInset
        )
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if layerHeightDependantCornerRadiusMultiplier > 0 {
            layer.cornerRadius = frame.height * layerHeightDependantCornerRadiusMultiplier
        }
    }
}

class AppLabelHeaderPrimary: AppLabel {}

class AppLabelBodySecondary: AppLabel {}
