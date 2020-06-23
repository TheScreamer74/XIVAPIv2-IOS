//
//  AccountReducer.swift
//  lpaandco
//
//  Created by Rayan Mehdi on 06/05/2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

struct AccountReducer : ReducerType {
    typealias State = AccountState
    
    func reduce(result: ResultType, state: AccountState) -> AccountState {
        switch result {
        case let accountResult as AccountResult:
            switch accountResult{

            default:
                return state
            }
        default:
            return state
        }
    }
    
}
