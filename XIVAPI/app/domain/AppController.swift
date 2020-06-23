//
//  AppController.swift
//
//  Created by MyLuckyDay on 10/14/19.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation

class AppController {
    
    let state: Observable<AppState>
    
    private let processor: AppProcessor
    private let reducer: AppReducer
    private let backgroundDispatch = DispatchQueue(label: "com.goseap.app.appcontroller.queue")
    
    init(processor: AppProcessor, reducer: AppReducer, initialState: AppState) {
        self.processor = processor
        self.reducer = reducer
        self.state = Observable(initialState)
    }
    
    func dispatch(_ action: ActionType) {
        backgroundDispatch.async { [weak self] in
            self?.processor.process(action: action) { [weak self] result in
                guard let currentState = self?.state.value else { return }
                guard let newState = (self?.reducer.reduce(result: result, state: currentState)) else { return }
                DispatchQueue.main.async { [weak self] in
                    self?.state.value = newState
                }
            }
        }
    }
    
}
