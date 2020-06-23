//
//  ResultStateControllerTitleLabel.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/1/20.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

class LPAAlertTitleLabel: AppLabelHeadline, LPAAlertPresentable {
    
    func configure(withType type: LPAAlertController.LPAAlertType) {
        switch type {
        case .tutorial: text = String.lpaAlertUseOfDataTitle
        case .authentication: text = nil
        case .custom(let items): text = items.title
        }
    }
}
