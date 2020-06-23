//
//  ResultStateImageView.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/1/20.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class ResultStateImageView: UIImageView, LPAAlertPresentable {
    
    func configure(withType type: LPAAlertController.LPAAlertType) {
        switch type {
        case .tutorial: image = UIImage(assetIdentifier: .error)
        case .authentication: image = UIImage(assetIdentifier: .success)
        case .custom(let items): configureImageViewForCustomAlertType(withImage: items.image)
        }
    }
    
    private func configureImageViewForCustomAlertType(withImage image: UIImage?) {
        if let image = image {
            self.image = image
            return
        }
        
        isHidden = true
    }
}
