//
//  ProcessorType.swift
//
//  Created by MyLuckyDay on 10/14/19.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation

protocol ProcessorType {
    func process(action: ActionType, next: @escaping (ResultType) -> Void)
}
