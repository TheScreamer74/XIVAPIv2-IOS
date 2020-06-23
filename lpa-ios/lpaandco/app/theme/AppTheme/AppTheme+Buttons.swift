//
//  AppTheme+Buttons.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/5/20
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

extension AppTheme {
    
    private var buttonContentEdgeInsets: UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 24.0, bottom: 0, right: 24.0)
    }
    
    func setupAppPrimaryButtonAppearance() {
        AppPrimaryButton.appearance().backgroundColor = colorPrimary
        AppPrimaryButton.appearance().titleColor = colorSecondary
        AppPrimaryButton.appearance().titleFont = fontHeadline
        AppPrimaryButton.appearance().contentEdgeInsets = buttonContentEdgeInsets
    }
    
    func setupAppSecondaryButtonAppearance() {
        AppSecondaryButton.appearance().backgroundColor = .clear
        AppSecondaryButton.appearance().layerBorderColor = colorPrimary
        AppSecondaryButton.appearance().layerBorderWidth = 1.0
        AppSecondaryButton.appearance().tintColor = colorPrimary
        AppSecondaryButton.appearance().titleFont = fontHeadline
        AppSecondaryButton.appearance().contentEdgeInsets = buttonContentEdgeInsets
    }
    
    func setupAppTertiaryButtonAppearance() {
        AppTertiaryButton.appearance().titleColor = colorLink
        AppTertiaryButton.appearance().underlineColor = colorLink
    }
    
    func setupAppCloseButtonAppearance() {
        AppCloseButton.appearance().backgroundColor = colorPrimary
        AppCloseButton.appearance().setImage(UIImage(assetIdentifier: .cross), for: .normal)
        AppCloseButton.appearance().tintColor = colorSecondary
        AppCloseButton.appearance().setTitle(nil, for: .normal)
    }
    
    func setupAppUnderlineButtonAppearance() {
        AppUnderlineButton.appearance().titleFont = fontUnderline
        AppUnderlineButton.appearance().titleColor = colorPrimary
        AppUnderlineButton.appearance().underlineViewColor = colorSecondary
    }
    
    func setupAppInputButtonAppearance() {
        AppInputButton.appearance().backgroundColor = colorSurface
        AppInputButton.appearance().contentHorizontalAlignment = .leading
        AppInputButton.appearance().titleFont = fontBody
        AppInputButton.appearance().titleColor = colorPrimary
    }
}
