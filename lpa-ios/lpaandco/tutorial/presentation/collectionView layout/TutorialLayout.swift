//
//  TutorialLayout.swift
//  lpaandco
//
//  Created by MyLuckyDay on 04.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class TutorialLayout: UICollectionViewFlowLayout {
    
    override func prepare() {
        
        guard let collectionView = self.collectionView else { return }
        itemSize = CGSize(width: collectionView.frame.size.width,
                          height: collectionView.frame.size.height)
        
        minimumLineSpacing = 0.0
        
        scrollDirection = .horizontal
    }
}
