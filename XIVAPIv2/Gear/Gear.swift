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
    let id: Int
    let materia: [Int]
    let mirage: Int?
    
      enum CodingKeys: String, CodingKey {
        case creator = "Creatoir"
        case dye = "Dye"
        case id = "ID"
        case materia = "Materia"
        case mirage = "Mirage"
        
    }
}


