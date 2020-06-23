//
//  AppReducer.swift
//
//  Created by MyLuckyDay on 10/14/19.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation

struct AppReducer: ReducerType {
    
    typealias State = AppState
    
    let serversReducer: ServersReducer
    
    func reduce(result: ResultType, state: AppState) -> AppState {
        return AppState(
            serversState: serversReducer.reduce(result: result, state: state.serversState)
        )
    }
}
