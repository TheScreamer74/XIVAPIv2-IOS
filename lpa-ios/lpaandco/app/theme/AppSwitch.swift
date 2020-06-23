//
//  AppSwitch.swift
//  lpaandco
//
//  Created by MyLuckyDay on 06.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class AppSwitch: UISwitch {
    
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
    
    override func layoutSubviews() {
        super.layoutSubviews()

        if layerHeightDependantCornerRadiusMultiplier > 0 {
            layer.cornerRadius = frame.height * layerHeightDependantCornerRadiusMultiplier
        }
    }
}

class FormSwitch: AppSwitch {}
