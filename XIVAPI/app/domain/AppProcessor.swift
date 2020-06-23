//
//  AppProcessor.swift
//
//  Created by MyLuckyDay on 10/14/19.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation

struct AppProcessor: ProcessorType {
    
    let processors: [ProcessorType]
    
    func process(action: ActionType, next: @escaping (ResultType) -> Void) {
        for processor in processors {
            processor.process(action: action, next: next)
        }
    }
}
