//
//  ServersTableViewController.swift
//  XIVAPIv2
//
//  Created by Thomas on 23/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit
import os.log

class ServerTableViewController: UITableViewController {

    //MARK: Properties
    
    var servers = [Server]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        loadSampleServers()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return servers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Table vew cells are reused and should be dequeued using a cell indentifer.

        let cellIdentifier = "ServerTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ServerTableViewCell else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
        
        let server = servers[indexPath.row]
        
        cell.serverNameLabel.text = server.name
        cell.serverDatacenterLabel.text = server.datacenter
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK: Private Methods
    
    private func loadSampleServers() {
        
        guard let serverCarbuncle = Server(datacenter: "Elemental", name: "Carbuncle") else {
            fatalError("Unable to instanciate server Elemental")
        }
        
        guard let serverMasamune = Server(datacenter: "Mana", name: "Masamune") else {
            fatalError("Unable to instanciate server Mana")
        }
        
        guard let serverExodus = Server(datacenter: "Exodus", name: "Primal") else {
            fatalError("Unable to instanciate server Exodus")
        }
        
        guard let serverCerberus = Server(datacenter: "Chaos", name: "Cerberus") else {
            fatalError("Unable to instanciate server Chaos")
        }
        
        servers += [serverCarbuncle, serverMasamune, serverExodus, serverCerberus]
        
    }
    
}
