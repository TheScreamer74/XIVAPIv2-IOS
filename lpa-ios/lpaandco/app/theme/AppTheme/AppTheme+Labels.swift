//
//  AppTheme+Buttons.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/5/20
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

extension AppTheme {
    func setupAppLabelTitle2Appearance() {
        AppLabelTitle2.appearance().textColor = colorPrimary
        AppLabelTitle2.appearance().font = fontTitle2
        AppLabelTitle2.appearance().allCaps = true
    }
    
    func setupAppLabelBodySecondaryAppearance() {
        AppLabelBody.appearance().textColor = colorPrimary
        AppLabelBody.appearance().font = fontBodySecondary
    }
    
    func setupAppLabelHeadlinePrimaryAppearance() {
        AppLabelHeadline.appearance().textColor = colorPrimary
        AppLabelHeadline.appearance().font = fontHeadline
    }
    
    func setupAppLabelErrorAppearance() {
        AppLabelError.appearance().font = fontCaption1
        AppLabelError.appearance().textColor = colorOnError
        AppLabelError.appearance().leftContentInset = 12.0
    }
    
    func setupAppLabelCaption1Appearance() {
        AppLabelCaption1.appearance().font = fontCaption1
        AppLabelCaption1.appearance().textColor = colorPrimary
    }
    
    func setupAppLabelFooterAppearance() {
        AppLabelFooter.appearance().font = fontFootnote
        AppLabelFooter.appearance().textColor = colorPrimary
    }
}
