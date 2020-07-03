//
//  Gear.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct Gear: Decodable {
    
    let creator: Int?
    let dye: Int?
    let item: Item
    let materia: [Materia]
    let mirage: Mirage?
    
      enum CodingKeys: String, CodingKey {
        case creator = "Creatoir"
        case dye = "Dye"
        case item = "Item"
        case materia = "Materia"
        case mirage = "Mirage"
        
    }
}


