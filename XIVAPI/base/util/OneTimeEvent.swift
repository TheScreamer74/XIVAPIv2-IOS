//
//  OneTimeEvent.swift
//
//  Created by MyLuckyDay on 18/10/2019.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation

class OneTimeEvent<T> {
    
    private let data: T
    private var consumed = false
    
    init(_ data: T) {
        self.data = data
    }
    
    func consume() -> T? {
        guard !consumed else { return nil }
        consumed = true
        return data
    }
    
    func peek() -> T {
        return data
    }
}
