//
//  GearPats.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation
import Foundation

struct GearParts: Decodable {

    let body: Gear
    let bracelets: Gear
    let earrings: Gear
    let feet: Gear
    let hands: Gear
    let head: Gear
    let legs: Gear
    let mainHand: Gear
    let nacklace: Gear
    let ring1: Gear
    let ring2: Gear
    let soulCrystal: Gear
    let waist: Gear
    
      enum CodingKeys: String, CodingKey {
        case body = "Body"
        case bracelets = "Bracelets"
        case earrings = "Earrings"
        case feet = "Feet"
        case hands = "Hands"
        case head = "Head"
        case legs = "Legs"
        case mainHand = "MainHand"
        case nacklace = "Necklace"
        case ring1 = "Ring1"
        case ring2 = "Ring2"
        case soulCrystal = "SoulCrystal"
        case waist = "Waist"
        
    }
}
