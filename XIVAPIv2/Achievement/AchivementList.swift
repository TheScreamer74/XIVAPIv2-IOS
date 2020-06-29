//
//  AchivementList.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation
struct AchievementList: Decodable{
    let list: [Achievement]
    let points: Int
    
    enum CodingKeys: String, CodingKey {
        case list = "List"
        case points = "Points"
    }
}
