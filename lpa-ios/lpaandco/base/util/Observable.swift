//
//  Observable.swift
//
//  Created by MyLuckyDay on 10/14/19.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation

/**
 Native `Observable` implementation
 
 [NativeObservable]: https://gist.github.com/leojkwan/aa7d11a394db1c176b136d59bc680230
 
 - see: [NativeObservable]
 */
class Observable<T> {
    
    typealias Observer = (T?) -> Void
    
    private(set) var observers = [Int: Observer]()
    
    var value: T? {
        didSet { updateObservers() }
    }
    
    init(_ value: T?) {
        self.value = value
    }
    
    func observe(_ observer: @escaping Observer) -> Disposable {
        
        let uniqueKey = Int(arc4random_uniform(10000))
        
        observers[uniqueKey] = (observer)
        observer(value)
        
        return ObserverDisposable(owner: self, key: uniqueKey)
    }
    
    private func updateObservers() {
        for(_, observer) in observers {
            observer(value)
        }
    }
    
    func removeObserver(with key: Int) {
        if observers.keys.contains(key) {
            observers.removeValue(forKey: key)
            updateObservers()
        }
    }
}

// MARK: - ObserverDisposable

class ObserverDisposable<T>: Disposable {
    
    var key: Int
    weak var owner: Observable<T>?
    
    init(owner: Observable<T>, key: Int) {
        self.key = key
        self.owner = owner
    }
    
    func dispose() {
        owner?.removeObserver(with: key)
    }
}
