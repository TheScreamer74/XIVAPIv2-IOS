//
//  SearchViewController.swift
//  XIVAPIv2
//
//  Created by Thomas on 25/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit

class SearchCharacterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerServerViewPicker: UIPickerView!
    @IBOutlet weak var searchBarTextField: UITextField!
    @IBOutlet weak var searchButtonView: UIButton!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //Connect data
        self.pickerServerViewPicker.delegate = self
        self.pickerServerViewPicker.dataSource = self
        
        pickerData =
            ["Cerberus","Louisoix","Moogle","Omega","Ragnarok","Spriggan"]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let valueSelected = pickerData[row] as String
    }
    
    //MARK: Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch(segue.identifier ?? ""){
        case "Search":
            guard let searchCharacterResultTableViewController = segue.destination as? SearchCharacterResultTableViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            let selectedValue = pickerServerViewPicker.selectedRow(inComponent: 0)
            
            searchCharacterResultTableViewController.server = pickerData[selectedValue]
            searchCharacterResultTableViewController.name = searchBarTextField.text
            
            
        default:
            fatalError("Unexpected Segue Identifier; \(segue.identifier)")
        }
    }

}
