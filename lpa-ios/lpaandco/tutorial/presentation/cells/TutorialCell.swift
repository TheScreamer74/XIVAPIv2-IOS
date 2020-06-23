//
//  TutorialCell.swift
//  lpaandco
//
//  Created by MyLuckyDay on 03.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class TutorialCell: UICollectionViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak private var imageview: UIImageView!
    @IBOutlet weak private var titleLabel: AppLabelTitle2!
    @IBOutlet weak private var subtitleLabel: AppLabelBody!
    
    // MARK: - Public properties
    func configureCell(withTutorial tutorial: Tutorial) {
        
        imageview.image = tutorial.image
        titleLabel.text = tutorial.title
        subtitleLabel.text = tutorial.subtitle
        
        imageview.backgroundColor = UIColor.lpaGraySecondary
    }
}
