//
//  BaseViewController.swift
//
//  Created by MyLuckyDay on 10/15/19.
//  Copyright © 2019 MyLuckyDay. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    let appController = AppDelegate.resolve(AppController.self)!
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        observeAppController()
    }
    
    func render(_ state: AppState) {
        fatalError("subclasses must override this")
    }
}

extension BaseViewController {
    
    func observeAppController() {
        appController.state.observe { [weak self] state in
            state.map { self?.render($0) }
        }.disposed(by: disposeBag)
    }
}
