//
//  Servers.swift
//  XIVAPIv2
//
//  Created by Thomas on 23/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit

class Server {
    
    //MARK: Properties
    let datacenter: String
    let name: String
    
    //MARK: Initializer
    init?(datacenter: String, name: String) {
        
        //Datacenter and name musntn't be empty
        guard !name.isEmpty && !datacenter.isEmpty else {
            return nil
        }
        
        //Initializing values
        self.datacenter = datacenter
        self.name = name
    }
}
