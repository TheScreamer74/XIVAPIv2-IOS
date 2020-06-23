//
//  ResultStateControllerTitleLabel.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/1/20.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

class ResultStateTitleLabel: AppLabelHeaderPrimary, ResultStatePresentable {
    
    func configure(withType type: ResultStateViewController.ResultStateControllerType) {
        switch type {
        case .tutorial: text = "tutorial view title"
            
        default: break
        }
    }
    
}
