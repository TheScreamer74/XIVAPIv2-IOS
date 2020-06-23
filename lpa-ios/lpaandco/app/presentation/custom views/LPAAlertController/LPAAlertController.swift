//
//  ResultStateViewController.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/1/20.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

protocol LPAAlertPresentable {
    func configure(withType type: LPAAlertController.LPAAlertType)
}

class LPAAlertController: UIViewController {

    typealias ActionBlock = (() -> Void)
    
    // MARK: - IBOutlets
    @IBOutlet weak private var imageView: ResultStateImageView!
    @IBOutlet weak private var titleLabel: LPAAlertTitleLabel!
    @IBOutlet weak private var messageTitleLabel: LPAAlertMessageTitleLabel!
    @IBOutlet weak private var messageSubtitleLabel: LPAAlertMessageSubtitleLabel!
    @IBOutlet weak private var messageSubtitle2Label: LPAalertMessageSubtitle2Label!
    @IBOutlet weak private var primaryButton: LPAAlertPrimaryButton!
    @IBOutlet weak private var secondaryButton: LPAAlertSecondaryButton!
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak private var topStackView: UIStackView!
    @IBOutlet weak private var bottomStackView: UIStackView!
    
    // MARK: - Private properties
    private var topStackViewSpacing: CGFloat { view.frame.size.height * 0.05 }
    private var bottomStackViewSpacing: CGFloat { view.frame.size.height * 0.065 }
    
    // MARK: - Public properties
    enum LPAAlertType {
        case tutorial
        case authentication
        case custom(items: LPAAlertItems)
    }
    
    var controllerType = LPAAlertType.custom(items: LPAAlertItems())
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLayout()
        // Do any additional setup after loading the view.
    }
    
    var primaryButtonAction: ActionBlock?
    var secondaryButtonAction: ActionBlock?
    var closeButtonAction: ActionBlock?
    
    // MARK: - Private methods
    private func configureLayout() {
        
        imageView.configure(withType: controllerType)
        titleLabel.configure(withType: controllerType)
        messageTitleLabel.configure(withType: controllerType)
        messageSubtitleLabel.configure(withType: controllerType)
        messageSubtitle2Label.configure(withType: controllerType)
        primaryButton.configure(withType: controllerType)
        secondaryButton.configure(withType: controllerType)

        let backgroundColor = self.backgroundColor(forControllerType: controllerType)
        
        view.backgroundColor = backgroundColor
        contentView.backgroundColor = backgroundColor
        
        topStackView.spacing = topStackViewSpacing
        bottomStackView.spacing = bottomStackViewSpacing
    }
    
    private func backgroundColor(forControllerType type: LPAAlertType) -> UIColor {
        switch type {
        case .tutorial, .authentication: return .lpaGrayBackground
        case .custom: return .lpaWhite
        }
    }
}

private extension LPAAlertController {
    @IBAction private func primaryButtonAction(_ sender: LPAAlertPrimaryButton) {
        guard let action = primaryButtonAction else { return }
        action()
    }
    
    @IBAction private func secondaryButtonAction(_ sender: LPAAlertSecondaryButton) {
        guard let action = secondaryButtonAction else { return }
        action()
    }
    
    @IBAction private func dismiss(_ sender: AppCloseButton) {
        if let closeButtonAction = closeButtonAction {
            closeButtonAction()
            return
        }
        
        dismiss(animated: true)
    }
}
