//
//  GridView.swift
//  ArchitectureTemplate
//
//  Created by Thomas on 30/04/2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation
import UIKit

class GridView: UIView {
    @IBOutlet weak var hostScrollView: UIScrollView?
    @IBOutlet weak var topConstraint: NSLayoutConstraint?
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint?
    @IBOutlet weak var leftConstraint: NSLayoutConstraint?
    @IBOutlet weak var rightConstraint: NSLayoutConstraint?
    
    private let arbitraryLargeOffset: CGFloat = 10000000.0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        defineScrollableArea()
        centreOurReferenceView()
    }
    
    private func defineScrollableArea() {
        guard let scrollview = hostScrollView else { return }
        topConstraint?.constant = arbitraryLargeOffset
        bottomConstraint?.constant = arbitraryLargeOffset
        leftConstraint?.constant = arbitraryLargeOffset
        rightConstraint?.constant = arbitraryLargeOffset
        scrollview.layoutIfNeeded()
    }
    
    private func centreOurReferenceView(){
        guard let scrollview = hostScrollView else { return }
        let xOffset = arbitraryLargeOffset - ((scrollview.frame.size.width - self.frame.size.width)*0.5)
        let yOffset = arbitraryLargeOffset - ((scrollview.frame.size.height - self.frame.size.height)*0.5)
        scrollview.setContentOffset(CGPoint(x: xOffset, y: yOffset), animated: false)
    }
}
