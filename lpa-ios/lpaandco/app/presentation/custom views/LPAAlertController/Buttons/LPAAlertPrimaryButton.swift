//
//  ResultStatePrimaryButton.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/1/20.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

class LPAAlertPrimaryButton: AppPrimaryButton, LPAAlertPresentable {
    
    func configure(withType type: LPAAlertController.LPAAlertType) {
        switch type {
        case .tutorial: setTitle(String.lpaAlertUserOfDataPrimaryButtonTitle, for: .normal)
        case .authentication: setTitle(String.lpaAlertAuthenticationPrimaryButtonTitle, for: .normal)
        case .custom(let items): configureButtonForCustomAlertType(withTitle: items.primaryButtonTitle)
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
