//
//  UITextField.swift
//  lpaandco
//
//  Created by MyLuckyDay on 05.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class AppTextField: UITextField, TextModifiable {
    
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
    //swiftlint:disable valid_ibinspectable
    dynamic var placeholderAttributes: [NSAttributedString.Key: Any]?
    //swiftlint:enable valid_ibinspectable
    
    @IBInspectable
    dynamic var leftContentInset: CGFloat = 0

    @IBInspectable
    dynamic var topContentInset: CGFloat = 0

    @IBInspectable
    dynamic var rightContentInset: CGFloat = 0

    @IBInspectable
    dynamic var bottomContentInset: CGFloat = 0
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: leftContentInset, dy: 0)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: leftContentInset, dy: 0)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if layerHeightDependantCornerRadiusMultiplier > 0 {
            layer.cornerRadius = frame.height * layerHeightDependantCornerRadiusMultiplier
        }
        
        if let placeholderAttributes = placeholderAttributes, let placeholder = placeholder {
            
            let attributedPlaceholder = NSAttributedString(string: placeholder, attributes: placeholderAttributes)
            self.attributedPlaceholder = attributedPlaceholder
        }
    }
    
}
