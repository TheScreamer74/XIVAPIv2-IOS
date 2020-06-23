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
    override var colorOnSurface: UIColor { .lpaBlack }
    override var colorOnError: UIColor { .lpaRed }
    var colorLink: UIColor { .lpaBlue }
    var colorPlaceholder: UIColor { .lpaBlackPlaceholder }
    var colorGray: UIColor { .lpaGray }
    var colorGrayTertiary: UIColor { .lpaGrayTertiary }

    let fontHeadline: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.bold.rawValue, size: 30)!)
    let fontTitleBold: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.bold.rawValue, size: 18)!)
    let fontBody: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.regular.rawValue, size: 16)!)
    let fontLink: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.regular.rawValue, size: 12)!)
    let fontBodySecondary: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.bold.rawValue, size: 30)!)
    let fontFootnote: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.bold.rawValue, size: 30)!)
    let fontTitle2: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.bold.rawValue, size: 30)!)
    let fontUnderline: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.bold.rawValue, size: 30)!)
    let fontCaption1: UIFont = UIFontMetrics.default.scaledFont(for: UIFont(name: FontName.bold.rawValue, size: 30)!)
    
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
        
        // TabBar
        setupTabBarAppearance()
        
        // NavigationBar
        setupNavigationBarAppearance()
        
        // Buttons
        setupAppPrimaryButtonAppearance()
        setupAppSecondaryButtonAppearance()
        setupAppTertiaryButtonAppearance()
        setupAppCloseButtonAppearance()
        setupAppUnderlineButtonAppearance()
        setupAppInputButtonAppearance()
        
        // Labels
        setupAppLabelTitle2Appearance()
        setupAppLabelBodySecondaryAppearance()
        setupAppLabelHeadlinePrimaryAppearance()
        setupAppLabelErrorAppearance()
        setupAppLabelCaption1Appearance()
        setupAppLabelFooterAppearance()
        
        // PageControl
        setupPageControlAppearance()

        // TextFields
        setupPrimaryTextFieldAppearance()
        setupFormTextFieldAppearance()
        
        // Switch
        setupAppSwitchAppearance()
        
        // TextView
        setupAppLinkTextViewAppearance()
        
        // InputView toolbar
        setupInputViewToolbarAppearance()
        
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
