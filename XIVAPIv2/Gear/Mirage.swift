//
//  Mirage.swift
//  XIVAPIv2
//
//  Created by Thomas on 03/07/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct Mirage: Decodable{
    let id: Int
    let icon: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case icon = "Icon"
        case name = "Name"

    }
}
