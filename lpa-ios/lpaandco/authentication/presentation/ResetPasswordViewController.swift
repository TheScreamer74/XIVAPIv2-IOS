//
//  ForgotPasswordViewController.swift
//  lpaandco
//
//  Created by MyLuckyDay on 07.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class ResetPasswordViewController: BaseViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var resetPasswordButton: AppPrimaryButton!
    @IBOutlet weak var emailTextField: AppPrimaryTextField!
    @IBOutlet weak var errorLabel: AppLabelError!
    @IBOutlet weak var sendEmailImageView: UIImageView!
    
    // MARK: - Private properties
    enum ControllerState {
        case normal
        case emailSent
    }
    
    private var controllerState: ControllerState = .normal {
        willSet {
            switch newValue {
            case .normal: configureNormalStateLayout()
            case .emailSent: configureEmailSentStateLayout()
            }
        }
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapAction))
        view.addGestureRecognizer(tapGestureRecognizer)
        // Do any additional setup after loading the view.
    }
    
    override func render(_ state: AppState) {
        
    }
    
    // MARK: - Private methods
    private func configureNormalStateLayout() {
        animateView(view: sendEmailImageView, toHidden: true)
        animateView(view: resetPasswordButton, toHidden: false)
    }
    
    private func configureEmailSentStateLayout() {
        animateView(view: sendEmailImageView, toHidden: false)
        animateView(view: resetPasswordButton, toHidden: true)
    }
    
    // MARK: - Animations
    private func animateView(view: UIView, toHidden hidden: Bool) {
        
        view.alpha = hidden ? 0.0 : 1.0
        
        UIView.animate(withDuration: mediumAnimationDuration,
                       delay: 0.0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 10,
                       options: .curveLinear, animations: {
                        view.isHidden = hidden
        }, completion: nil)
    }
}

// MARK: - Actions
extension ResetPasswordViewController {
    
    @IBAction private func dismiss(_ sender: AppCloseButton) {
        dismiss(animated: true)
    }
    
    @IBAction private func resetPassword(_ sender: AppPrimaryButton) {
        controllerState = .emailSent
    }
    
    @objc private func tapAction() {
        emailTextField.resignFirstResponder()
    }
}
