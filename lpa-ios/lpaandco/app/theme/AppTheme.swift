//
//  AppTheme.swift
//  NeufMoisEtMoi
//
//  Created by MacBook on 10/3/19.
//

import Foundation
import UIKit

class AppTheme: MaterialTheme {
    
    enum FontName: String {
        case regular = "SourceSansPro-Regular"
        case bold = "SourceSansPro-Bold"
        case italic = "SourceSansPro-Italic"
    }

    override var colorPrimary: UIColor { .lpaBlack }
    override var colorPrimaryDark: UIColor { .lpaBlack }
    override var colorSecondary: UIColor { .lpaYellow }
    override var colorSurface: UIColor { .lpaWhite }
    override var colorOnPrimary: UIColor { .lpaYellow }
    override var colorOnSecondary: UIColor { .lpaBlack }
    override var colorOnSurface: UIColor { .lpaBlack }
    var colorLink: UIColor { .lpaGray02 }

    let fontHeadline: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.bold.rawValue, size: 30)!)
    let fontTitleBold: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.bold.rawValue, size: 18)!)
    let fontBody: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.regular.rawValue, size: 16)!)
    let fontLink: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.regular.rawValue, size: 12)!)
    
//<!-- region Text -->
//<attr name="TextTitle" format="reference" />
//<attr name="TextBodyBold" format="reference" />
//<attr name="TextSubbody" format="reference" />
//<attr name="TextButton" format="reference" />
//<!-- endregion -->
//<!-- region Button -->
//<attr name="ButtonOutlined" format="reference" />
//<attr name="ButtonText" format="reference" />
//<!-- endregion -->
    
    override func extend() {
        super.extend()
        
        AppTabBar.appearance().selectionIndicatorImageColor = colorSecondary
        
        UINavigationBar.appearance().titleTextAttributes = [
            NSAttributedString.Key.font: fontTitleBold,
            NSAttributedString.Key.foregroundColor: colorPrimary
        ]
        
        AppLabelTitleBold.appearance().textColor = colorPrimary
        AppLabelTitleBold.appearance().font = fontTitleBold
        AppLabelTitleBold.appearance().adjustsFontForContentSizeCategory = true
        
        AppLabelBody.appearance().textColor = colorPrimary
        AppLabelBody.appearance().font = fontBody
        AppLabelBody.appearance().adjustsFontForContentSizeCategory = true
        
        AppLabelLink.appearance().textAttributes = [
            NSAttributedString.Key.font: fontLink,
            NSAttributedString.Key.foregroundColor: colorLink,
            NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue,
            NSAttributedString.Key.underlineColor: colorLink
        ]
        AppLabelLink.appearance().adjustsFontForContentSizeCategory = true
    }

}
