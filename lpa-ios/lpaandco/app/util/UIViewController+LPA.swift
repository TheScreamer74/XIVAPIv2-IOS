//
//  UIViewController+LPA.swift
//  lpaandco
//
//  Created by MyLuckyDay on 03.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

extension UIViewController {
    
    enum Identifier: String {
        case tutorial
        case signIn
        case register
        case resetPassword
        case addVehicle
        case parkingFilter
    }
    
    var defaultAnimationDuration: TimeInterval { 0.3 }
    var mediumAnimationDuration: TimeInterval { 0.8 }
    var longAnimationDuration: TimeInterval { 1.2 }
}
