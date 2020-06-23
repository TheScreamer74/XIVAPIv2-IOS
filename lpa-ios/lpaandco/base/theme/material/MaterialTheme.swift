// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/2/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import UIKit

class MaterialTheme: Theme {
    
    var colorPrimary: UIColor { .defaultPrimary }
    var colorPrimaryLight: UIColor { .defaultPrimaryLight }
    var colorPrimaryDark: UIColor { .defaultPrimaryDark }
    var colorSecondary: UIColor { .defaultSecondary }
    var colorSecondaryLight: UIColor { .defaultSecondaryLight }
    var colorSecondaryDark: UIColor { .defaultSecondaryDark }
    var colorSurface: UIColor { .defaultSurface }
    var colorBackground: UIColor { .defaultBackground }
    var colorError: UIColor { .defaultError }
    var colorOnPrimary: UIColor { .defaultOnPrimary }
    var colorOnSecondary: UIColor { .defaultOnSecondary }
    var colorOnSurface: UIColor { .defaultOnSurface }
    var colorOnBackground: UIColor { .defaultOnBackground }
    var colorOnError: UIColor { .defaultOnError }
    
    var fontHeadline1: UIFont { UIFont.systemFont(ofSize: 96, weight: .light) }
    var fontHeadline2: UIFont { UIFont.systemFont(ofSize: 60, weight: .light) }
    var fontHeadline3: UIFont { UIFont.systemFont(ofSize: 48, weight: .regular) }
    var fontHeadline4: UIFont { UIFont.systemFont(ofSize: 34, weight: .regular) }
    var fontHeadline5: UIFont { UIFont.systemFont(ofSize: 24, weight: .regular) }
    var fontHeadline6: UIFont { UIFont.systemFont(ofSize: 20, weight: .medium) }
    var fontSubtitle1: UIFont { UIFont.systemFont(ofSize: 16, weight: .regular) }
    var fontSubtitle2: UIFont { UIFont.systemFont(ofSize: 14, weight: .medium) }
    var fontBody1: UIFont { UIFont.systemFont(ofSize: 16, weight: .regular) }
    var fontBody2: UIFont { UIFont.systemFont(ofSize: 14, weight: .regular) }
    var fontCaption: UIFont { UIFont.systemFont(ofSize: 12, weight: .regular) }
    var fontButton: UIFont { UIFont.systemFont(ofSize: 14, weight: .medium) }
    var fontOverline: UIFont { UIFont.systemFont(ofSize: 10, weight: .regular) }
    
    func extend() {
        
        MaterialButton.appearance().layerCornerRadius = 6
        MaterialButton.appearance().backgroundColor = colorPrimary
        MaterialButton.appearance().setTitleColor(colorOnPrimary, for: .normal)
        MaterialButton.appearance().allCaps = true
        UILabel.appearance(whenContainedInInstancesOf: [MaterialButton.self]).font = fontButton
        UILabel.appearance(whenContainedInInstancesOf: [MaterialButton.self]).adjustsFontForContentSizeCategory = true
        
    }
    
}
