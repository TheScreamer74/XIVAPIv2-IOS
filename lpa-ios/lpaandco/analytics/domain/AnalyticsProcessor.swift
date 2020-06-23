// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/6/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import Foundation

struct AnalyticsProcessor: ProcessorType {
    
    func process(action: ActionType, next: @escaping (ResultType) -> Void) {
        
        switch action {
        case let parkingAction as ParkingAction:
            track(parkingAction: parkingAction)
        default:
            break
        }
    }
    
    private func track(parkingAction: ParkingAction) {
        switch parkingAction {
        case let .testSetCanOpenGate(canOpen):
            AnalyticsEvent.testSetCanOpenGate(canOpen: canOpen).track()
        }
    }
}
