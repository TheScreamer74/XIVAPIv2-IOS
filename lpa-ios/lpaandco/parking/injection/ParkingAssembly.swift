// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/3/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import Swinject

class ParkingAssembly: Assembly {
    
    func assemble(container: Container) {
        
        container.register(ParkingProcessor.self) { _ in
            ParkingProcessor()
        }.inObjectScope(.container)
        
        container.register(ParkingReducer.self) { _ in
            ParkingReducer()
        }.inObjectScope(.container)
        
    }
    
}
