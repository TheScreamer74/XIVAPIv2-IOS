//
//  WelcomeViewController.swift
//  lpaandco
//
//  Created by MyLuckyDay on 4/30/20.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - Public properties
    enum SegueIdentifier: String {
        case showErrorAlert
        case showTutorial
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    private func configureErrorAlertController(withDestinationViewController destination: UIViewController) {
        guard let errorAlertController = destination as? LPAAlertController else { return }
        
        errorAlertController.controllerType = .tutorial
        
        errorAlertController.primaryButtonAction = { [weak self] in
            guard let self = self else { return }
            self.dismiss(animated: true)
        }
    }
}

extension WelcomeViewController: SegueIdentifiable {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segueIdentifier(forSegue: segue) {
        case .showErrorAlert: configureErrorAlertController(withDestinationViewController: segue.destination)
        case .showTutorial: break
        }
    }
}
