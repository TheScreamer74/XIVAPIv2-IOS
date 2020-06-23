//
//  AppPrimaryTextField.swift
//  lpaandco
//
//  Created by Alex on 10.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class AppPrimaryTextField: AppTextField {
    
    enum TextFieldState {
        case normal
        case error
    }
    
    var textFieldState: TextFieldState = .normal {
        willSet {
            configureAppearance(for: newValue)
        }
    }
    
    private func configureAppearance(for state: TextFieldState) {
        let borderWidth: CGFloat = state == .error ? 1.0 : 0.0
        
        animateBorderWidth(toValue: borderWidth, duration: 0.2)
    }
}
