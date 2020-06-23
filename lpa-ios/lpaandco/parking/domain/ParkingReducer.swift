// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/3/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

struct ParkingReducer: ReducerType {
    
    typealias State = ParkingState
    
    func reduce(result: ResultType, state: ParkingState) -> ParkingState {
        
        guard let parkingResult = result as? ParkingResult else { return state }
        
        switch parkingResult {
            
        case let .testSetCanOpenGate(canOpen):
            return state.copy(canOpenGate: canOpen)
        }
    }
}
