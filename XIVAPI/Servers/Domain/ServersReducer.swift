//
//  ServersReducer.swift
//  ArchitectureTemplate
//
//  Created by Thomas on 30/04/2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

struct ServersReducer: ReducerType {
     
    typealias State = ServersState
    
     func reduce(result: ResultType, state: ServersState) ->
        ServersState {
            
            switch result {
            case let serversResult as ServersResults:
                    
                    switch serversResult {
                    case .success:
                        return state
                    default:
                         return state
                }
                
            default:
                return state
        }
    }

}
