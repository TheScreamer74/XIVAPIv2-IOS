//
//  AppTheme+Buttons.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/5/20
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation
import CoreGraphics

extension AppTheme {
    
    func setupPrimaryTextFieldAppearance() {
    
        AppPrimaryTextField.appearance().font = fontBody
        AppPrimaryTextField.appearance().borderStyle = .none
        AppPrimaryTextField.appearance().backgroundColor = colorSurface
        AppPrimaryTextField.appearance().placeholderAttributes = [
            .font: fontBody,
            .foregroundColor: colorPlaceholder
        ]
        
        AppPrimaryTextField.appearance().leftContentInset = 12.0
        AppPrimaryTextField.appearance().layerBorderColor = colorOnError
    }
    
    func setupFormTextFieldAppearance() {
        AppFormTextField.appearance().buttonBackgroundColor = colorSecondary
        AppFormTextField.appearance().buttonTintColor = colorPrimary
    }
}
