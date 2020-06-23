//
//  ReducerType.swift
//
//  Created by MyLuckyDay on 10/14/19.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation

protocol ReducerType {
    
    associatedtype State: StateType
    
    func reduce(result: ResultType, state: State) -> State
}
