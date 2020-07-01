//
//  SearchOtherViewController.swift
//  XIVAPIv2
//
//  Created by Thomas on 01/07/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit

class SearchOtherViewController: UIViewController {

    @IBOutlet weak var searchLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
// MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch(segue.identifier ?? ""){
        case "Search":
            guard let searchOtherResultTableViewController = segue.destination as? SearchOtherResultsTableViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            
            searchOtherResultTableViewController.name = searchLabel.text
            
            
        default:
            fatalError("Unexpected Segue Identifier; \(segue.identifier)")
        }
    }

}


