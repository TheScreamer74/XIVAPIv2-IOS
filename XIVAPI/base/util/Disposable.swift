//
//  Disposable.swift
//
//  Created by MyLuckyDay on 10/14/19.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation

protocol Disposable {
    func dispose()
}
extension Disposable {
    func disposed(by bag: DisposeBag) {
        bag.add(self)
    }
}
