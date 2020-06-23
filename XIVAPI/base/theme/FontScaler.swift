//
//  FontScaler.swift
//
//  Created by MyLuckyDay on 18/10/2019.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation
import UIKit

final class FontScaler {
    
    private struct FontDescription: Decodable {
        let fontSize: CGFloat
        let fontName: String
    }
    
    private typealias StyleDictionary = [UIFont.TextStyle.RawValue: FontDescription]
    private var styleDictionary: StyleDictionary?
    
    init(fontName: String) {
        guard let url = Bundle.main.url(forResource: fontName, withExtension: "plist") else { return }
        guard let data = try? Data(contentsOf: url) else { return }
        let decoder = PropertyListDecoder()
        styleDictionary = try? decoder.decode(StyleDictionary.self, from: data)
    }
    
    func font(forTextStyle textStyle: UIFont.TextStyle) -> UIFont {
        guard let fontDescription = styleDictionary?[textStyle.rawValue] else {
            return UIFont.preferredFont(forTextStyle: textStyle)
        }
        
        guard let font = UIFont(name: fontDescription.fontName, size: fontDescription.fontSize) else {
            return UIFont.preferredFont(forTextStyle: textStyle)
        }
        
        let fontMetrics = UIFontMetrics(forTextStyle: textStyle)
        return fontMetrics.scaledFont(for: font)
    }
    
}
