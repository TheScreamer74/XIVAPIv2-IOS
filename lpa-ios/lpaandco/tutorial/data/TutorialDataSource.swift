//
//  TutorialDataSource.swift
//  lpaandco
//
//  Created by MyLuckyDay on 04.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class TutorialDataSource: NSObject {
    
    // MARK: - Public properties
    var tutorialsCount: Int { tutorials.count }
    
    // MARK: - Private properties
    private lazy var tutorials: [Tutorial] = {
        return [
            Tutorial(image: Image.step1, title: String.tutorialStep1Title, subtitle: String.tutorialStep1Subtitle),
            Tutorial(image: Image.step2, title: String.tutorialStep2Title, subtitle: String.tutorialStep2Subtitle),
            Tutorial(image: Image.step3, title: String.tutorialStep3Title, subtitle: String.tutorialStep3Subtitle),
            Tutorial(image: nil, title: String.tutorialStep4Title, subtitle: String.tutorialStep4Subtitle)
        ]
    }()
    
    lazy private var cellIdentifier: String = {
        return String(describing: TutorialCell.self)
    }()
}

// MARK: - UICollectionViewDataSource
extension TutorialDataSource: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        tutorialsCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
            as? TutorialCell else { return UICollectionViewCell() }
        
        cell.configureCell(withTutorial: tutorials[indexPath.item])
        
        return cell
    }
    
}

extension TutorialDataSource {
    private struct Image {
        static let step1 = UIImage(assetIdentifier: .step1)
        static let step2 = UIImage(assetIdentifier: .step2)
        static let step3 = UIImage(assetIdentifier: .step3)
    }
}
