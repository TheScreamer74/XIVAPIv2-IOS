//
//  SegueIdentifiable.swift
//  lpaandco
//
//  Created by MyLuckyDay on 03.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

protocol SegueIdentifiable {
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueIdentifiable where Self: UIViewController, SegueIdentifier.RawValue == String {
    
    func performSegue(withIdentifier segueIdentifier: SegueIdentifier, sender: AnyObject?) {
        performSegue(withIdentifier: segueIdentifier.rawValue, sender: sender)
    }
    
    func segueIdentifier(forSegue segue: UIStoryboardSegue) -> SegueIdentifier {
        guard let identifier = segue.identifier, let segueIdentifier = SegueIdentifier(rawValue: identifier) else {
            fatalError("Invalid segue identifier \(String(describing: segue.identifier))")
        }
        
        return segueIdentifier
    }
}
