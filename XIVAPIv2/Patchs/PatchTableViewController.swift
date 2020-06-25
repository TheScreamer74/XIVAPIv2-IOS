//
//  PatchTableViewController.swift
//  XIVAPIv2
//
//  Created by Thomas on 23/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit
import os.log
import Alamofire

class PatchTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var patches = [Patch]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        fetchPatches()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return patches.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table vew cells are reused and should be dequeued using a cell indentifer.

        let cellIdentifier = "PatchTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PatchTableViewCell else {
            fatalError("The dequeued cell is not an instance of ServerTableViewCell.")
        }
        
        if patches[indexPath.row].banner == nil {
           patches[indexPath.row].banner = patches[(indexPath.row)-1].banner
        }
        let url = URL(string: patches[indexPath.row].banner!)
        let banner = try? Data(contentsOf: url!)
        cell.patchImageview.image = UIImage(data: banner!)
        
        cell.PatchNameLabel.text = patches[indexPath.row].name
        cell.PatchVersionLabel.text = patches[indexPath.row].version
        os_log("server successfully dequeued", log: OSLog.default, type: .debug)

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch(segue.identifier ?? ""){
        case "ShowDetails":
            guard let patchDetailViewController = segue.destination as? PatchViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            guard let selectedPatchCell = sender as? PatchTableViewCell else {
                fatalError("Unexpected sender: \(sender)")
            }
            
            guard let indexPath = tableView.indexPath(for: selectedPatchCell) else {
                fatalError("The selected cell is not being displayed by the table")
            }
            
            let selectedPatch = patches[indexPath.row]
            patchDetailViewController.patch = selectedPatch
            
        default:
            fatalError("Unexpected Segue Identifier; \(segue.identifier)")
        }
    }

    //MARK: Private Methods
    /*
    private func loadSamplePatches() {
        let arrBanner = UIImage(named: "BannerARR2.0")
        let hwBanner = UIImage(named: "BannerHW3.0")
        let sbBanner = UIImage(named: "BannerSB4.0")
        let shbBanner = UIImage(named: "BannerShB5.0")
        
        guard let patchARealmReborn = Patch(banner: arrBanner, exVersion: 0, id: 0, name: "Patch 2.0: A Realm Reborn", releaseDate: 1376611200, version: "2.0") else {
            fatalError("Cannot instantiate patchARealmReborn")
        }
        
        guard let patchHeavensward = Patch(banner: hwBanner, exVersion: 1, id: 19, name: "Patch 3.0: Heavensward", releaseDate: 1434682800, version: "3.0") else {
            fatalError("Cannot instantiate patchHeavensward")
        }
        
        guard let patchStormblood = Patch(banner: sbBanner, exVersion: 2, id: 36, name: "Patch 4.0: Stormblood", releaseDate: 1497517200, version: "4.0") else {
            fatalError("Cannot instantiate patchStormblood")
        }
        
        guard let patchShadowbringer = Patch(banner: shbBanner, exVersion: 3, id: 58, name: "Patch 5.0: Shadowbringer", releaseDate: 1561712400, version: "5.0") else {
            fatalError("Cannot instantiate patchShadowbringer")
        }
        
        patches += [patchARealmReborn, patchHeavensward, patchStormblood, patchShadowbringer]
        
    }
    */
}

extension PatchTableViewController {
    func fetchPatches() {
        
        //1
        AF.request("https://xivapi.com/patchlist")
            .validate()
            .responseDecodable(of: [Patch].self){
                (response) in
                guard let patches = response.value else {
                    return
                }
                
                self.patches = patches
                self.tableView.reloadData()
                
            }
    }
}
