//
//  Job.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct Job: Decodable{
    let _class: NClass
    let expLevel: Int
    let expLevelMax: Int
    let expLevelTogo: Int
    let isSpecialised: Bool
    let jobDetailed: JobDetailed
    let level: Int
    let name: String
    let unlockedState: UnlockedState
    
    enum CodingKeys: String, CodingKey {
        case _class = "Class"
        case expLevel = "ExpLevel"
        case expLevelMax = "ExpLevelMax"
        case expLevelTogo = "ExpLevelTogo"
        case isSpecialised = "IsSpecialised"
        case jobDetailed = "Job"
        case level = "Level"
        case name = "Name"
        case unlockedState = "UnlockedState"
        
    }
}

