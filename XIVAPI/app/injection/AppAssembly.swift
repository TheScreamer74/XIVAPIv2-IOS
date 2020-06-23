//
//  AppAssembly.swift
//
//  Created by MyLuckyDay on 10/14/19.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation
import Swinject

class AppAssembly: Assembly {
    
    func assemble(container: Container) {
        
        assembleDynamic(container)
        
        container.register(AppProcessor.self) { resolv in
            AppProcessor(processors: resolv.resolve([ProcessorType].self)!)
        }.inObjectScope(.container)
        
        container.register(AppController.self) { resolv in
            AppController(
                processor: resolv.resolve(AppProcessor.self)!,
                reducer: resolv.resolve(AppReducer.self)!,
                initialState: AppState()
            )
        }.inObjectScope(.container)
    }
    
}

// MARK: - Dynamic assembly
extension AppAssembly {
    
    func assembleDynamic(_ container: Container) {
        
        // Processors
        container.register([ProcessorType].self) { resolver in
            return [
                resolver.resolve(ExampleProcessor.self)!
            ]
        }.inObjectScope(.container)
        
        // Reducers
        container.register(AppReducer.self) { resolver in
            AppReducer(
                exampleReducer: resolver.resolve(ExampleReducer.self)!
            )
        }.inObjectScope(.container)
    }
}
