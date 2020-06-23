//
//  AppFormTextField.swift
//  lpaandco
//
//  Created by MyLuckyDay on 10.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class AppFormTextField: AppPrimaryTextField {
    
    // MARK: - Public properties
    @IBInspectable
    dynamic var buttonBackgroundColor: UIColor? {
        get { button.backgroundColor }
        set { button.backgroundColor = newValue }
    }
    
    @IBInspectable
    dynamic var buttonTintColor: UIColor? {
        get { button.tintColor }
        set { button.tintColor = newValue }
    }
    
    @IBInspectable
    var imageName: String? {
        get { _imageName }
        set {
            if let imageName = newValue {
                _imageName = imageName
                let image = UIImage(named: imageName)
                button.setImage(image, for: .normal)
            }
        }
    }
    
    var rightViewAction: (() -> Void)?
    
    /// Updates caret visibility. Default value is `true`
    @IBInspectable var isCaretVisible: Bool = true
    
    private var _imageName: String?
    
    // MARK: - Private properties
    private var _rightView: UIView?
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        let height = frame.size.height
        let offset: CGFloat = 3.0
        let heightWithDoubleOffsetValue = height - (offset * 2)
        return CGRect(x: bounds.size.width - heightWithDoubleOffsetValue - offset,
                          y: offset,
                          width: heightWithDoubleOffsetValue,
                          height: heightWithDoubleOffsetValue)
    }
    
    override func caretRect(for position: UITextPosition) -> CGRect {
        isCaretVisible ? super.caretRect(for: position) : .zero
    }
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    private func commonInit() {
        rightView = button
        rightViewMode = .always
    }
}

// MARK: - Actions
extension AppFormTextField {
    @objc private func buttonAction(_ sender: UIButton) {
        if let rightViewAction = rightViewAction {
            rightViewAction()
        }
    }
}
