//
//  AccountAction.swift
//  lpaandco
//
//  Created by Rayan Mehdi on 06/05/2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

enum AccountAction : ActionType {
    case login(mail: String, password: String)
    case logout
    case getMyUser
    case signup
}
