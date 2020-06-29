//
//  SearchResultTableViewController.swift
//  XIVAPIv2
//
//  Created by Thomas on 25/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit
import Alamofire

class SearchResultTableViewController: UITableViewController {
    
    var server: String?
    var name: String?
    var results: Search?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        fetchCharacters()
        
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
        
        let cellIdentifier = "CharacterCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? SearchResultTableViewCell else {
            fatalError("The dequeued cell is not an instance of ServerTableViewCell.")
        }

        
        let character = results?.results[indexPath.row]
        
        cell.NameCharacterLabel.text = character?.name
        
        let url = URL(string: (character?.avatar)!)
        let avatar = try? Data(contentsOf: url!)
        cell.CharacterImageView.image = UIImage(data: avatar!) //resize the image
        

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
        
        switch(segue.identifier ?? ""){
        case "ShowDetails":
            guard let characterViewController = segue.destination as? CharacterViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            guard let selectedCharacterCell = sender as? SearchResultTableViewCell else {
                fatalError("Unexpected sender: \(sender)")
            }
            
            guard let indexPath = tableView.indexPath(for: selectedCharacterCell) else {
                fatalError("The selected cell is not being displayed by the table")
            }
            
            let selectedCharacter = results?.results[indexPath.row]
            characterViewController.characterShort = selectedCharacter
            
        default:
            fatalError("Unexpected Segue Identifier; \(segue.identifier)")
        }
    }
    

}

extension SearchResultTableViewController {
    func fetchCharacters() {
        
        let parameters: Parameters = ["name": name!, "server": server!]
        //1
        AF.request("https://xivapi.com/character/search", parameters: parameters)
            .validate()
            .responseDecodable(of: Search.self){
                (response) in
                guard let results = response.value else {
                    return
                }
                
                self.results = results
                self.tableView.reloadData()
                
            }
    }
}
