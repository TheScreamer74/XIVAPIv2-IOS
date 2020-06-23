//
//  UIStoryboard+LPA.swift
//  lpaandco
//
//  Created by MyLuckyDay on 03.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    enum Name: String {
        case welcome
        case authentication
        case parking
    }
    
    static func load(identifier: Name) -> UIStoryboard {
        return UIStoryboard(name: identifier.rawValue.firstUppercased, bundle: nil)
    }
    
    func instantiateViewController(identifier: UIViewController.Identifier) -> UIViewController {
        let viewControllerSuffix = "ViewController"
        let identifierString = String(format: "%@%@", identifier.rawValue.firstUppercased, viewControllerSuffix)
        return instantiateViewController(withIdentifier: identifierString)
    }
}
