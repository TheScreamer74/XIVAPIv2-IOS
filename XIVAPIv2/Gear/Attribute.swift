//
//  Attribute.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation
struct Attributes: Decodable{ /*Waring FIND THE NAME OF EACH ATTRIBUTE IT WILL BE LOOONG AF REMEMBER TO USE ONLY LILITH JVYN PROFILE WHILE ALL ATTRIBUTES ARE NOTE DISCOVERED OR IT MAY CRASH*/
    let one: Int
    let two: Int
    let three: Int
    let four: Int
    let five: Int
    let six: Int?
    let seven: Int?
    let eight: Int?
    let nineteen: Int?
    let twenty: Int?
    let twentyone: Int?
    let twentytwo: Int?
    let twentyfour: Int?
    let twentyseven: Int?
    let thirtythree: Int?
    let threetyfour: Int?
    let fourtyfour: Int?
    let fourtyfive: Int?
    let fourtysix: Int?
    
    enum CodingKeys: String, CodingKey {
        case one = "1"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
        case nineteen = "19"
        case twenty = "20"
        case twentyone = "21"
        case twentytwo = "22"
        case twentyfour = "24"
        case twentyseven = "27"
        case thirtythree = "33"
        case threetyfour = "34"
        case fourtyfour = "44"
        case fourtyfive = "45"
        case fourtysix = "46"
        
    }
}
