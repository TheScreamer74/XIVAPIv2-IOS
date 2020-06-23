//
//  SignInViewController.swift
//  lpaandco
//
//  Created by MyLuckyDay on 05.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation

class SignInViewController: BaseViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var emailTextField: AppPrimaryTextField!
    @IBOutlet weak var passwordTextField: AppPrimaryTextField!
    
    private var isError = false
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func render(_ state: AppState) {
        
    }
}

// MARK: - Actions
extension SignInViewController {
    @IBAction private func showRegisterViewController(_ sender: AppPrimaryButton) {
        isError.toggle()
        let state = isError ? AppPrimaryTextField.TextFieldState.error : .normal
        emailTextField.textFieldState = state
    }
}
