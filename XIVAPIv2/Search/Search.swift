//
//  Search.swift
//  XIVAPIv2
//
//  Created by Thomas on 25/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation


struct Search: Decodable{
    
    let pagination: Pagination
    let results: [CharacterShort]
    
    enum CodingKeys: String, CodingKey {
        
        case pagination = "Pagination"
        case results = "Results"

    }
}

