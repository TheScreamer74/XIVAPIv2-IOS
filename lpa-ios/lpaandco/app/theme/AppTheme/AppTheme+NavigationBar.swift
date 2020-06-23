//
//  AppTheme+NavigationBar.swift
//  lpaandco
//
//  Created by MyLuckyDay on 05.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

extension AppTheme {
    
    func setupNavigationBarAppearance() {
        
        UINavigationBar.appearance().titleTextAttributes = [
            NSAttributedString.Key.font: fontTitleBold,
            NSAttributedString.Key.foregroundColor: colorPrimary
        ]
    }
    
}
