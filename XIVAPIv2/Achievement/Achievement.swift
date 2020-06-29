//
//  Achievement.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct Achievement: Decodable {    
    let date: Int
    let id: Int

    enum CodingKeys: String, CodingKey {
        case date = "Date"
        case id = "ID"
    }
}
