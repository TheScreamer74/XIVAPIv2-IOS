//
//  AccountRepository.swift
//  lpaandco
//
//  Created by Rayan Mehdi on 06/05/2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation
import Moya
import Alamofire


class AccountRepository {
    private let api: MoyaProvider<LpaService>
    
    init(api: MoyaProvider<LpaService>) {
        self.api = api
    }
}
