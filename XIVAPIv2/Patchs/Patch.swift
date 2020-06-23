//
//  Patchs.swift
//  XIVAPIv2
//
//  Created by Thomas on 23/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit

class Patch {
    
    //MARK: Properties
    let banner: String?
    let exVersion: Int
    let id: Int
    let name: String
    let releaseDate: Int32
    let version: String
    
    //MARK: Initializer
    init?(banner: String?, exVersion: Int, id: Int, name: String, releaseDate: Int32, version: String){
        
        //name and version mustn't be empty
        guard !name.isEmpty && !version.isEmpty else {
            return nil
        }
        
        //Initializing values
        self.banner = banner
        self.exVersion = exVersion
        self.id = id
        self.name = name
        self.releaseDate = releaseDate
        self.version = version
        
    }
}
