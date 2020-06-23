//
//  AppFormDisclosureTextField.swift
//  lpaandco
//
//  Created by Alex on 10.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class AppFormDisclosureTextField: AppFormTextField {
    
    // MARK: - Private properties
    private lazy var button: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setImage(UIImage(assetIdentifier: .arrowDown), for: .normal)
        
        return button
    }()
    
    private lazy var imageView: UIImageView = {
        let image = UIImage(assetIdentifier: .arrowDown)
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
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
        isCaretVisible = false
        
        imageName = UIImage.AssetIdentifier.arrowDown.rawValue
    }
}
