//
//  AccountResult.swift
//  lpaandco
//
//  Created by Rayan Mehdi on 06/05/2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

enum AccountResult : ResultType {
    case viewIsLoading
    case loggedIn(user: User?, error: Error?)
    case loggedOut(error: Error?)
}
