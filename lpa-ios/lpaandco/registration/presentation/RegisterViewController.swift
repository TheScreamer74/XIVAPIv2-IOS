//
//  RegisterViewController.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/5/20
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

class RegisterViewController: BaseViewController {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func render(_ state: AppState) {
        
    }
}
