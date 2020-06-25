//
//  PatchViewController.swift
//  XIVAPIv2
//
//  Created by Thomas on 25/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit

class PatchViewController: UIViewController {
    
    
    @IBOutlet weak var bannerPatchImageView: UIImageView!
    @IBOutlet weak var namePatchLabel: UILabel!
    @IBOutlet weak var versionPatchLabel: UILabel!
    @IBOutlet weak var exVersionPatchLabel: UILabel!
    @IBOutlet weak var datePatchLabel: UILabel!
    
    var patch: Patch?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let patch = patch{
            
            let url = URL(string: patch.banner!)
            let banner = try? Data(contentsOf: url!)
            bannerPatchImageView.image = UIImage(data: banner!)
            
            namePatchLabel.text = patch.name
            versionPatchLabel.text = patch.version
            exVersionPatchLabel.text = String(patch.exVersion)
            
            
            let date = Date(timeIntervalSince1970: patch.releaseDate)
            let formatter = DateFormatter()
            formatter.dateFormat = "dd-MM-yyyy"
            let dateString = formatter.string(from: date)
            datePatchLabel.text = dateString
            
        }
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
