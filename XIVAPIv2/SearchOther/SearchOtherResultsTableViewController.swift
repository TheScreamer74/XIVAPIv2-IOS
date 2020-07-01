//
//  SearchOtherResultsTableViewController.swift
//  XIVAPIv2
//
//  Created by Thomas on 01/07/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit
import Alamofire

class SearchOtherResultsTableViewController: UITableViewController {
    
    var name: String?
    var results: SearchOther?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        fetchResults()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var numRow: Int
        
        if results == nil {
            numRow = 0
        } else {
            numRow = results!.results.count
        }
        
        return numRow
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "OtherCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? SearchOtherResultsTableViewCell else {
            fatalError("The dequeued cell is not an instance of SearchOtherResultTableViewCell.")
        }

        
        let other = results?.results[indexPath.row]
        
        cell.titleLabel.text = other?.name
        let url = URL(string: "https://xivapi.com/\(other?.icon ?? "")")
        let icon = try? Data(contentsOf: url!)
        cell.iconImageView.image = UIImage(data: icon!) //resize the image
        

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

}


extension SearchOtherResultsTableViewController {
    func fetchResults() {
        
        let parameters: Parameters = ["string": name!]
        //1
        AF.request("https://xivapi.com/search", parameters: parameters)
            .validate()
            .responseDecodable(of: SearchOther.self){
                (response) in
                guard let results = response.value else {
                    print(response.request)
                    print(response.error)
                    return
                }
                
                self.results = results
                self.tableView.reloadData()
                print(results)
                
            }
    }
}
