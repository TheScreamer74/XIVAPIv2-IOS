//
//  ResultStateMessageSubtitleLabel.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/1/20.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

class LPAAlertMessageSubtitleLabel: AppLabelBody, LPAAlertPresentable {
    
    func configure(withType type: LPAAlertController.LPAAlertType) {
        switch type {
        case .tutorial: text = nil
        case .authentication: text = String.lpaAlertAuthenticationMessageSubtitle
        case .custom(let items): text = items.messageSubtitle
        }
    }
}
