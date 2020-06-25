//
//  Patchs.swift
//  XIVAPIv2
//
//  Created by Thomas on 23/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit
import Alamofire

struct Patch: Decodable {
    
    //MARK: Properties
    var banner: String? //Change to String? when implementing Moya services
    let exVersion: Int
    let id: Int
    let name: String
    let releaseDate: TimeInterval
    let version: String
    
    enum CodingKeys: String, CodingKey {
        case banner = "Banner"
        case exVersion = "ExVersion"
        case id = "ID"
        case name = "Name"
        case releaseDate = "ReleaseDate"
        case version = "Version"
    }
}
