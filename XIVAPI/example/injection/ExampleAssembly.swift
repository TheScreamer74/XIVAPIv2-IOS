// 
//  ArchitectureTemplate
//
//  Created by MyLuckyDay on 3/18/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import Foundation
import Swinject

class ExampleAssembly: Assembly {
    
    func assemble(container: Container) {
        
        container.register(ExampleRepository.self) { _ in
            ExampleRepositoryImpl()
        }.inObjectScope(.container)
        
        container.register(ExampleProcessor.self) { res in
            ExampleProcessor(repo: r.resolve(ExampleRepository.self)!)
        }.inObjectScope(.container)
        
        container.register(ExampleReducer.self) { _ in
            ExampleReducer()
        }.inObjectScope(.container)
        
    }
    
}
