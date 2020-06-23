//
//  AppTheme+Switch.swift
//  lpaandco
//
//  Created by MyLuckyDay on 06.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

extension AppTheme {
    
    func setupAppSwitchAppearance() {
        
        FormSwitch.appearance().backgroundColor = colorGrayTertiary
        FormSwitch.appearance().tintColor = colorGrayTertiary
        FormSwitch.appearance().onTintColor = colorPrimary
        FormSwitch.appearance().thumbTintColor = colorSecondary
        FormSwitch.appearance().layerHeightDependantCornerRadiusMultiplier = 0.5
    }
    
}
