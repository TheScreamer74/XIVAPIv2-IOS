//
//  CharacterViewController.swift
//  XIVAPIv2
//
//  Created by Thomas on 29/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit
import Alamofire

class CharacterViewController: UIViewController {
    @IBOutlet weak var LabelNameCharacter: UILabel!
    @IBOutlet weak var AvatarImageView: UIImageView!
    
    var characterShort: CharacterShort?
    var characterDetailed: CharacterDetailed?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        fetchCharacter()
        
        if characterDetailed != nil {

            
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

extension CharacterViewController {
    func fetchCharacter() {
        
        let parameters: Parameters = ["data": "AC,CJ"]
        let url = "https://xivapi.com/character/\(characterShort?.id ?? 0)"
        //1
        AF.request(url, parameters: parameters)
            .validate()
            .responseDecodable(of: CharacterDetailed.self){
                (response) in
                guard let results = response.value else {
                    print(response.request)
                    print(response.error)
                    return
                }
                
                self.characterDetailed = results
                
                self.LabelNameCharacter.text = self.characterDetailed?.character.name
                let url = URL(string: (self.characterDetailed?.character.portrait)!)
                let avatar = try? Data(contentsOf: url!)
                self.AvatarImageView.image = UIImage(data: avatar!)
                
            }
    }
}

