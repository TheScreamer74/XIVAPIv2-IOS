//
//  AddVehicleViewController.swift
//  lpaandco
//
//  Created by MyLuckyDay on 07.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

class AddVehicleViewController: BaseViewController {

    @IBOutlet weak var vehicleTypeTextField: AppFormDisclosureTextField!
    @IBOutlet weak var vehicleSizeTextField: AppFormDisclosureTextField!
    @IBOutlet weak var vehicleNameTextField: AppFormDisclosureTextField!
    @IBOutlet weak var vehicleModelTextField: AppFormDisclosureTextField!
    @IBOutlet weak var vehicleRegistrationTextField: AppPrimaryTextField!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupKeyboardManager()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func render(_ state: AppState) {
        
    }
    
    private func setupKeyboardManager() {
        // Toolbar 'Done' button action. Remove it in case if not needed...
        vehicleTypeTextField.keyboardToolbar.doneBarButton.setTarget(self, action: #selector(toolbarDoneAction(sender:)))
    }
}

// MARK: - Actions
extension AddVehicleViewController {
    @objc private func toolbarDoneAction(sender: UIBarButtonItem) {
        print("toolbar done action")
    }
    
    @IBAction private func addVehicle(_ sender: AppPrimaryButton) {
        // Temporary implementation, just for development purpose...
        let storyboard = UIStoryboard.load(identifier: .parking)
        guard let viewController = storyboard.instantiateViewController(identifier: .parkingFilter)
            as? ParkingFilterViewController else { return }
        
        present(viewController, animated: true, completion: nil)
    }
}
