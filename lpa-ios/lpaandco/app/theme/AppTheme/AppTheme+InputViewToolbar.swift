//
//  AppTheme+KeyboardManager.swift
//  lpaandco
//
//  Created by MyLuckyDay on 11.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation
import IQKeyboardManagerSwift

extension AppTheme {
    
    func setupInputViewToolbarAppearance() {
        IQKeyboardManager.shared.toolbarTintColor = colorPrimary
    }
}
