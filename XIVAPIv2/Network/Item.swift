//
//  Item.swift
//  XIVAPIv2
//
//  Created by Thomas on 03/07/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct Item: Decodable{
    let classJobCategory: ClassJobCategory
    let id: Int
    let icon: String
    let itemUICategory: ItemUICategory
    let levelEquip: Int
    let levelItem: Int
    let name: String
    let rarity: Int
    
    enum CodingKeys: String, CodingKey {
        case classJobCategory = "ClassJobCategory"
        case id = "ID"
        case icon = "Icon"
        case itemUICategory = "ItemUICategory"
        case levelEquip = "LevelEquip"
        case levelItem = "LevelItem"
        case name = "Name"
        case rarity = "Rarity"
        
    }
}
