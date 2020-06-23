//
//  LPASegmentedView.swift
//  lpaandco
//
//  Created by Alex on 11.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class LPASegmentedView: UIView {

    // MARK: - IBOutlets
    @IBOutlet weak private var view: UIView!
    @IBOutlet weak private var stackView: UIStackView!
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        numberOfSegments = 2
    }
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        
        numberOfSegments = 2
        
        super.init(frame: frame)
        
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        numberOfSegments = 2
        
        super.init(coder: aDecoder)
        
        commonInit()
    }
    
    private func commonInit() {
        let nibClassName = String(describing: LPASegmentedView.self)
        
        Bundle.main.loadNibNamed(nibClassName, owner: self, options: nil)
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view)
    }
    
    // MARK: - Private properties
    var numberOfSegments: Int {
        willSet {
            for index in 0..<newValue {
                let button = UIButton(type: .roundedRect)
                button.setTitle("Button", for: .normal)

                stackView.addArrangedSubview(button)
            }
        }
    }

}

//let int = stackview.subviews.distance(from: stackview.subviews.startIndex, to: selectedIndex)

