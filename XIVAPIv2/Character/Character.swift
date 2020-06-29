//
//  Character.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct Character: Decodable{
    let activeClassJob: Job
    let avatar: String
    let bio: String
    let classJobs: [Job]
    let datacenter: String
    let freeCompanyId: String?
    let gearSet: GearSet
    let gender: Int
    let grandCompany: GrandCompany
    let guardianDeity: Int
    let id: Int
    let lang: String?
    let minions: [String?] // A FAIRE PLUS TARD
    let mounts: [String?] // A FAIRE PLUS TARD
    let name: String
    let nameday: String
    let parsedate: Int
    let portrait: String
    let pvpTeamId: Int?
    let race: Int
    let server: String
    let title: Int
    let titleTop: Bool
    let town: Int
    let tribe: Int
    
    enum CodingKeys: String, CodingKey {
        case activeClassJob = "ActiveClassJob"
        case avatar = "Avatar"
        case bio = "Bio"
        case classJobs = "ClassJobs"
        case datacenter = "DC"
        case freeCompanyId = "FreeCompanyId"
        case gearSet = "GearSet"
        case gender = "Gender"
        case grandCompany = "GrandCompany"
        case guardianDeity = "GuardianDeity"
        case id = "ID"
        case lang = "Lang"
        case minions = "Minions"
        case mounts = "Mounts"
        case name = "Name"
        case nameday = "Nameday"
        case parsedate = "ParseDate"
        case portrait = "Portrait"
        case pvpTeamId = "PvPTeamId"
        case race = "Race"
        case server = "Server"
        case title = "Title"
        case titleTop = "TitleTop"
        case town = "Town"
        case tribe = "Tribe"
        
    }
}

