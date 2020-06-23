//
//  CellIdentifiable.swift
//  lpaandco
//
//  Created by MyLuckyDay on 04.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

protocol CellIdentifiable {
    var cellIndetifier: String { get }
}

extension CellIdentifiable {
    
    var cellIndetifier: String { String(describing: Self.self) }
    
}
