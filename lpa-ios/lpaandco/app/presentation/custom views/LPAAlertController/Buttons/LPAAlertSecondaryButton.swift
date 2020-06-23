//
//  ResultStateSecondaryButton.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/1/20.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

class LPAAlertSecondaryButton: AppSecondaryButton, LPAAlertPresentable {
    
    func configure(withType type: LPAAlertController.LPAAlertType) {
        switch type {
        case .tutorial, .authentication: isHidden = true
        case .custom(let items): configureButtonForCustomAlertType(withTitle: items.secondaryButtonTitle)
        }
    }
    
    private func configureButtonForCustomAlertType(withTitle title: String?) {
        if let title = title {
            setTitle(title, for: .normal)
            return
        }
        
        isHidden = true
    }
}
