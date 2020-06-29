//
//  GrandCompany.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct GrandCompany: Decodable {
    let nameId: Int
    let rankId: Int
    
      enum CodingKeys: String, CodingKey {
        case nameId = "NameID"
        case rankId = "RankID"
        
    }
}
