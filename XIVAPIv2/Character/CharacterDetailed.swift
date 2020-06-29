//
//  CharacterDetailed.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct CharacterDetailed: Decodable{
    
    let achievements: AchievementList?
    let achievementsPublic: Bool?
    let character: Character
    let freeCompany: Int? //A FAIRE
    let freeCompanyMembers: Int?
    let friends: Int? //A FAIRE
    let friendsPublic: Int?
    let PvPTeam: Int? //A FAIRE
    
    
    enum CodingKeys: String, CodingKey {
        case achievements = "Achievements"
        case achievementsPublic = "AchievementsPublic"
        case character = "Character"
        case freeCompany = "FreeCompany"
        case freeCompanyMembers = "FreeCompanyMembers"
        case friends = "Friends"
        case friendsPublic = "FriendsPublic"
        case PvPTeam = "PvPTeam"
        
    }
}

