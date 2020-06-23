//
//  ForgotPasswordViewController.swift
//  lpaandco
//
//  Created by Alex on 07.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class ResetPasswordViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func render(_ state: AppState) {
        
    }
}

// MARK: - Actions
extension ResetPasswordViewController {
    
    @IBAction private func dismiss(_ sender: AppCloseButton) {
        dismiss(animated: true)
    }
    
}
