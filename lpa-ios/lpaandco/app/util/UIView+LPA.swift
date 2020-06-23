//
//  UIView+LPA.swift
//  lpaandco
//
//  Created by MyLuckyDay on 05.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

extension UIView {
    
    func animateBorderWidth(toValue: CGFloat, duration: Double) {
        let animation = CABasicAnimation(keyPath: "borderWidth")
        animation.fromValue = layer.borderWidth
        animation.toValue = toValue
        animation.duration = duration
        animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        layer.add(animation, forKey: "Width")
        layer.borderWidth = toValue
    }
}
