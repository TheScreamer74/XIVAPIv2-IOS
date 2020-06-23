//
//  AppFormPasswordTextField.swift
//  lpaandco
//
//  Created by MyLuckyDay on 10.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class AppFormPasswordTextField: AppFormTextField {
    
    // MARK: - Initialisers
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    private func commonInit() {
        imageName = UIImage.AssetIdentifier.eyeIcon.rawValue
        
        textContentType = .password
        isSecureTextEntry = true
        
        rightViewAction = { [weak self] in
            guard let self = self else { return }
            
            self.isSecureTextEntry.toggle()
        }
    }
}
