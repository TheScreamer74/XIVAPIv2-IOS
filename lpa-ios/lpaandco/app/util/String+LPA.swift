//
//  String+LPA.swift
//  lpaandco
//
//  Created by MyLuckyDay on 03.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

extension StringProtocol {
    var firstUppercased: String {
        return prefix(1).uppercased() + dropFirst()
    }
    
    func nsRange(from range: Range<String.Index>) -> NSRange {
        let startPos = self.distance(from: self.startIndex, to: range.lowerBound)
        let endPos = self.distance(from: self.startIndex, to: range.upperBound)
        return NSRange(location: startPos, length: endPos - startPos)
    }
}
