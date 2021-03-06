//
//  ClassJobCategory.swift
//  XIVAPIv2
//
//  Created by Thomas on 03/07/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct ClassJobCategory: Decodable{
    let id: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case name = "Name"
        
    }
}
