//
//  Other.swift
//  XIVAPIv2
//
//  Created by Thomas on 01/07/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct Other: Decodable{
    
    let id: Int
    let icon: String
    let name: String
    let url: String
    let urlType: String
    let type: String
    let score: Int
    
    
    enum CodingKeys: String, CodingKey {
        
        case id = "ID"
        case icon = "Icon"
        case name = "Name"
        case url = "Url"
        case urlType = "UrlType"
        case type = "_"
        case score = "_Score"
        
    }
}
