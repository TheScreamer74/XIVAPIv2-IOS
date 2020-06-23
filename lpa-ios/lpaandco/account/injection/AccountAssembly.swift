//
//  AccountAssembly.swift
//  lpaandco
//
//  Created by Rayan Mehdi on 06/05/2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation
import Alamofire
import Moya
import Swinject

class AccountAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(AccountProcessor.self) { r in
            AccountProcessor()
        }
        
        container.register(AccountReducer.self) { r in
            AccountReducer()
            
        }
    }
    
}
