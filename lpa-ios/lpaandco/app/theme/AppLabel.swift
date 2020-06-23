//
//  AppLabelBodyPrimary.swift
//  NeufMoisEtMoi
//
//  Created by MacBook on 10/3/19.
//

import UIKit

@IBDesignable
class AppLabel: UILabel, TextModifiable {
    
    @IBInspectable
    dynamic var allCaps: Bool = false
    
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
    
    @objc
    dynamic var textAttributes: [NSAttributedString.Key: Any]?

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

        textAttributes.map { attr in
            text.map {
                attributedText = NSAttributedString(string: $0, attributes: attr)
            }
        }
        
        if layerHeightDependantCornerRadiusMultiplier > 0 {
            layer.cornerRadius = frame.height * layerHeightDependantCornerRadiusMultiplier
        }
        
        if allCaps {
            text = text?.uppercased()
        }
    }
}

class AppLabelHeaderPrimary: AppLabel {}

class AppLabelTitleBold: AppLabel {}

class AppLabelBody: AppLabel {}

class AppLabelLink: AppLabel {}
class AppLabelHeadline: AppLabel {}

class AppLabelTitle2: AppLabel {}

class AppLabelError: AppLabel {}

class AppLabelCaption1: AppLabel {}

class AppLabelFooter: AppLabel {}
