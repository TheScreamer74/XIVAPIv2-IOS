//
//  Attribute.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation
struct Attributes: Decodable{
    let attribute: Attribute
    let value: Int
    
    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case value = "Value"
        
    }
}
