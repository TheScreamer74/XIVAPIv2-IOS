//
//  DisposeBag.swift
//
//  Created by MyLuckyDay on 10/14/19.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation

class DisposeBag {
    var disposables = [Disposable]()
    
    func add(_ disposable: Disposable) {
        disposables.append(disposable)
    }
    
    func dispose() {
        disposables.forEach({ $0.dispose() })
    }
    
    deinit {
        dispose()
    }
}
