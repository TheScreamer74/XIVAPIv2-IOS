//
//  AppTheme+TextView.swift
//  lpaandco
//
//  Created by MyLuckyDay on 06.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

extension AppTheme {
    
    func setupAppLinkTextViewAppearance() {
        
        AppLinkTextView.appearance().textContainerInset = .zero
        AppLinkTextView.appearance().textAttributes = [
            NSAttributedString.Key.link: "",
            NSAttributedString.Key.underlineColor: colorLink,
            NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue
        ]
        
        AppLinkTextView.appearance().textFont = fontCaption1
        AppLinkTextView.appearance().backgroundColor = .clear
    }
}
