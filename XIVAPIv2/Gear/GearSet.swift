//
//  GearSet.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct GearSet: Decodable {
    let attribute: Attributes
    let classId: Int
    let gear: GearParts
    let gearKey: String
    let jobId: Int
    let level: Int
    
      enum CodingKeys: String, CodingKey {
        case attribute = "Attributes"
        case classId = "ClassID"
        case gear = "Gear"
        case gearKey = "GearKey"
        case jobId = "JobID"
        case level = "Level"
    }
}
