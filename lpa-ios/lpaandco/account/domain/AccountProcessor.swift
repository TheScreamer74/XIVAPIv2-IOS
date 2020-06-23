//
//  AccountProcessor.swift
//  lpaandco
//
//  Created by Rayan Mehdi on 06/05/2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

struct AccountProcessor : ProcessorType {
    
    func process(action: ActionType, next: @escaping (ResultType) -> Void) {
        switch action {
        case let accountAction as AccountAction:
            switch accountAction {
            default:
                print("")
            }
        default:
            print("")
        }
    }
}
