//
//  AppTextView.swift
//  lpaandco
//
//  Created by MyLuckyDay on 06.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class AppTextView: UITextView {
    
    //swiftlint:disable valid_ibinspectable
    @IBInspectable
    dynamic var textAttributes: [NSAttributedString.Key: Any]?
    
    @IBInspectable
    dynamic var textFont: UIFont? {
        get { self.font }
        set { self.font = newValue }
    }
    //swiftlint:enable valid_ibinspectable
}

class AppLinkTextView: AppTextView {
    
    @IBInspectable
    dynamic var linkText: String?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if let textAttributes = textAttributes, let linkText = linkText, text.contains(linkText),
            let linkAttributesRange = text.range(of: linkText) {
            let attributedString = NSMutableAttributedString(string: text)
            
//            attributedString.addAttributes(textAttributes, range: text.nsRange(from: linkAttributesRange))
            
            self.attributedText = attributedString
            
            guard let textFont = textFont else { return }
            font = textFont
        }
    }
    
}
