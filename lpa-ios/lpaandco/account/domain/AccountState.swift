//
//  AccountState.swift
//  lpaandco
//
//  Created by Rayan Mehdi on 06/05/2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

struct AccountState : StateType, MemberwiseCopyable {
    var isLoading: Bool?
    var error: OneTimeEvent<Error>?
    var user: User?
}
