// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/3/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

struct ParkingProcessor: ProcessorType {
    
    func process(action: ActionType, next: @escaping (ResultType) -> Void) {
        
        guard let parkingAction = action as? ParkingAction else { return }
        
        switch parkingAction {
        case let .testSetCanOpenGate(canOpen):
            next(ParkingResult.testSetCanOpenGate(canOpen: canOpen))
        }
    }
}
