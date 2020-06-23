//
//  AppPlaceholderButton.swift
//  lpaandco
//
//  Created by MyLuckyDay on 08.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class AppPlaceholderButton: ThemeButton {

    // MARK: - Initialisation
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Private properties
    private enum TitleStyle {
        case `default`
        case placeholder
    }
    
    private var titleStyle = TitleStyle.default
    
    private var _title: String?
    private var _placeholder: String?
    
    override func setTitle(_ title: String?, for state: UIControl.State) {
        super.setTitle(title, for: state)
        
    }
    
    // MARK: - Public properties
    @IBInspectable
    var placeholder: String? {
        get { _placeholder }
        set { _placeholder = newValue }
    }
    
    // MARK: - Private methods
}
