//
//  OtherSearchResults.swift
//  XIVAPIv2
//
//  Created by Thomas on 01/07/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct SearchOther: Decodable{
    
    let pagination: Pagination
    let results: [Other]
    
    enum CodingKeys: String, CodingKey {
        
        case pagination = "Pagination"
        case results = "Results"
        
    }
}
