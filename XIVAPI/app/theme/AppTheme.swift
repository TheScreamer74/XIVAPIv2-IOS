//
//  AppTheme.swift
//  NeufMoisEtMoi
//
//  Created by MacBook on 10/3/19.
//

import Foundation
import UIKit

struct AppTheme {
    
    let colorPrimary: UIColor = .red
    let colorSecondary: UIColor = .blue
    let colorAccent: UIColor = .green
    let colorTextPrimary: UIColor = .darkGray
    let colorTextSecondary: UIColor = .lightGray
    
    let fontHeader: UIFont
    let fontBody: UIFont
    
    init() {
        let fontScaler = FontScaler(fontName: "GothamRounded")
        fontHeader = fontScaler.font(forTextStyle: .header)
        fontBody = fontScaler.font(forTextStyle: .body)
    }
    
    func apply() {
        
        UINavigationBar.appearance().barTintColor = colorPrimary
        UIActivityIndicatorView.appearance().color = colorAccent
        
        setupLabelAppearance()
        
        setupButtonAppearance()
    }
    
    // MARK: - Labels
    
    private func setupLabelAppearance() {
        
        AppLabelHeaderPrimary.appearance().textColor = colorPrimary
        AppLabelHeaderPrimary.appearance().font = fontHeader
        AppLabelHeaderPrimary.appearance().adjustsFontForContentSizeCategory = true
        
        AppLabelBodySecondary.appearance().textColor = colorTextSecondary
        AppLabelBodySecondary.appearance().font = fontBody
        AppLabelBodySecondary.appearance().adjustsFontForContentSizeCategory = true
    }
    
    // MARK: - Buttons
    
    private func setupButtonAppearance() {
        
        AppButtonPrimary.appearance().setTitleColor(.white, for: .normal)
        AppButtonPrimary.appearance().backgroundColor = colorPrimary
        AppButtonPrimary.appearance().layerHeightDependantCornerRadiusMultiplier = 0.5
        AppButtonPrimary.appearance().contentHorizontalAlignment = .center
        UILabel.appearance(whenContainedInInstancesOf: [AppButtonPrimary.self]).font = fontBody
        
        AppButtonSecondaryBordered.appearance().setTitleColor(colorTextPrimary, for: .normal)
        AppButtonSecondaryBordered.appearance().backgroundColor = .clear
        AppButtonSecondaryBordered.appearance().layerHeightDependantCornerRadiusMultiplier = 0.5
        AppButtonSecondaryBordered.appearance().contentHorizontalAlignment = .center
        AppButtonSecondaryBordered.appearance().layerBorderWidth = 2
        AppButtonSecondaryBordered.appearance().layerBorderColor = colorPrimary
        UILabel.appearance(whenContainedInInstancesOf: [AppButtonSecondaryBordered.self]).font = fontBody
    }
}
