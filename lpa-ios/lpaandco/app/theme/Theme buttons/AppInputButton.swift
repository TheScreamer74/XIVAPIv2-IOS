//
//  AppInputButton.swift
//  lpaandco
//
//  Created by MyLuckyDay on 08.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class AppInputButton: ThemeButton {
    
    private var _inputView: UIView?
    private var _inputAccessoryView: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override var inputView: UIView? {
        get { _inputView }
        set { _inputView = newValue }
    }
    
    override var inputAccessoryView: UIView? {
        get { _inputAccessoryView }
        set { _inputAccessoryView = newValue }
    }
    
    override var canBecomeFirstResponder: Bool { true }
}
