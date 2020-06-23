//
//  ResultStateMessageSubtitle2Label.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/1/20.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

class LPAalertMessageSubtitle2Label: AppLabelBody, LPAAlertPresentable {
    
    func configure(withType type: LPAAlertController.LPAAlertType) {
        switch type {
        case .tutorial, .authentication: text = nil
        case .custom(let items): text = items.messageSubtitle2
        }
    }
    
}
