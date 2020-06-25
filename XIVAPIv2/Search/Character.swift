//
//  Character.swift
//  XIVAPIv2
//
//  Created by Thomas on 25/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct Character: Decodable{
    
    let avatar: String?
    let feastMatches: Int
    let id: Int
    let lang: String
    let name: String
    let rank: String?
    let rankIcon: String?
    let server: String
    
    enum CodingKeys: String, CodingKey {
        case avatar = "Avatar"
        case feastMatches = "FeastMatches"
        case id = "ID"
        case lang = "Lang"
        case name = "Name"
        case rank = "Rank"
        case rankIcon = "RankIcon"
        case server = "Server"
    }
}
