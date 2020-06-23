//
//  AppPageControl.swift
//  lpaandco
//
//  Created by MyLuckyDay on 04.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation
import CHIPageControl

class AppPageControl: CHIPageControlChimayo {
    
    @IBInspectable
    dynamic override var tintColor: UIColor! {
        get { super.tintColor }
        set { super.tintColor = newValue }
    }
}

class PageControl: AppPageControl {}
