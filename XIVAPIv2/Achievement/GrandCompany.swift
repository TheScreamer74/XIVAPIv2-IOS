//
//  GrandCompany.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct GrandCompany: Decodable {
    let company: Company
    let rank: Rank
    
      enum CodingKeys: String, CodingKey {
        case company = "Company"
        case rank = "Rank"
        
    }
}
