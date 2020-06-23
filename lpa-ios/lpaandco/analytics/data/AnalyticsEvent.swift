// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/6/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import Foundation

enum AnalyticsEvent {
    
    case testSetCanOpenGate(canOpen: Bool)
    
}

extension AnalyticsEvent {
    
    func track() {
        switch self {
        case let .testSetCanOpenGate(canOpen):
            debugPrint("tracked event: testSetCanOpenGate with value: \(canOpen)")
        }
    }
}
