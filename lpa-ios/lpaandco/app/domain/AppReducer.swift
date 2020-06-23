//
//  AppReducer.swift
//
//  Created by MyLuckyDay on 10/14/19.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation

struct AppReducer: ReducerType {
    
    typealias State = AppState
    
    let parkingReducer: ParkingReducer
    
    func reduce(result: ResultType, state: AppState) -> AppState {
        return AppState(
            parkingState: parkingReducer.reduce(result: result, state: state.parkingState)
        )
    }
}
