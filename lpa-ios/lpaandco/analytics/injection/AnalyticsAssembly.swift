// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/6/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import Swinject

class AnalyticsAssembly: Assembly {

    func assemble(container: Container) {
        
        container.register(AnalyticsProcessor.self) { _ in AnalyticsProcessor() }
            .inObjectScope(.container)
    }

}
