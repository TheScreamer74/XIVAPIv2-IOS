//
//  AppUnderlineButton.swift
//  lpaandco
//
//  Created by MyLuckyDay on 08.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class AppUnderlineButton: ThemeButton {
    
    @IBInspectable
    dynamic var underlineViewColor: UIColor?
    
    private lazy var underlineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(view)
        
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if let titleLabel = titleLabel, let color = underlineViewColor {
            NSLayoutConstraint.activate([
                underlineView.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: -4.0),
                underlineView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2.0),
                underlineView.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 4.0),
                underlineView.heightAnchor.constraint(equalToConstant: 3.0)
            ])
            
            underlineView.backgroundColor = color
        }
    }
}
