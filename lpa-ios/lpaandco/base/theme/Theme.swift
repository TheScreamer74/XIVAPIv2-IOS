// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/2/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import UIKit

/**
 This is the default theme definition based on Material 2020
 
 It includes the following elements:
 
 - [Color](https://material.io/design/color/#color-theme-creation)
    - Primary
    - Primary Variant (Light/Dark)
    - Secondary
    - Secondary Variant (Light/Dark)
    - Background
    - Surface
    - Error
    - OnPrimary
    - OnSecondary
    - OnBackground
    - OnSurface
    - OnError
 
 */
protocol Theme {
    
    // MARK: - Color
    
    /// color displayed most frequently across app's screens and components
    var colorPrimary: UIColor { get }
    var colorPrimaryLight: UIColor { get }
    var colorPrimaryDark: UIColor { get }
    
    /// provides more ways to accent and distinguish the app
    var colorSecondary: UIColor { get }
    var colorSecondaryLight: UIColor { get }
    var colorSecondaryDark: UIColor { get }
    
    /// affects surfaces of components (cards / sheets / menus / etc.)
    var colorSurface: UIColor { get }
    
    /// appears behind scrollable content
    var colorBackground: UIColor { get }
    
    /// indicates errors in components
    var colorError: UIColor { get }
    
    var colorOnPrimary: UIColor { get }
    var colorOnSecondary: UIColor { get }
    var colorOnSurface: UIColor { get }
    var colorOnBackground: UIColor { get }
    var colorOnError: UIColor { get }
    
    // MARK: - Fonts
    
    var fontHeadline1: UIFont { get }
    var fontHeadline2: UIFont { get }
    var fontHeadline3: UIFont { get }
    var fontHeadline4: UIFont { get }
    var fontHeadline5: UIFont { get }
    var fontHeadline6: UIFont { get }
    var fontSubtitle1: UIFont { get }
    var fontSubtitle2: UIFont { get }
    var fontBody1: UIFont { get }
    var fontBody2: UIFont { get }
    var fontCaption: UIFont { get }
    var fontButton: UIFont { get }
    var fontOverline: UIFont { get }
    
    func extend()
    
}

extension Theme {
    
    func apply() {
        
        UINavigationBar.appearance().barTintColor = colorPrimary
        UINavigationBar.appearance().tintColor = colorOnPrimary
        
        UITabBar.appearance().barTintColor = colorSurface
        UITabBar.appearance().tintColor = colorPrimary
        UITabBar.appearance().unselectedItemTintColor = colorOnSurface.withAlphaComponent(0.6)

        UIActivityIndicatorView.appearance().color = colorSecondary
        
        extend()
    }
    
    func extend() {}
    
}
