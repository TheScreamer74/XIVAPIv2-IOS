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
    
    //Class Outlet
    @IBOutlet weak var labelLevelPGL: UILabel!
    @IBOutlet weak var labelLevelLNC: UILabel!
    @IBOutlet weak var labelLevelROG: UILabel!
    @IBOutlet weak var labelLevelARC: UILabel!
    @IBOutlet weak var labelLevelTHN: UILabel!
    @IBOutlet weak var labelLevelART: UILabel!
    @IBOutlet weak var labelLevelGLA: UILabel!
    @IBOutlet weak var labelLevelMAR: UILabel!
    @IBOutlet weak var labelLevelCON: UILabel!
    
    //Job Outlet
    @IBOutlet weak var labelLevelMNK: UILabel!
    @IBOutlet weak var labelLevelDRG: UILabel!
    @IBOutlet weak var labelLevelNIN: UILabel!
    @IBOutlet weak var labelLevelSAM: UILabel!
    @IBOutlet weak var labelLevelBRD: UILabel!
    @IBOutlet weak var labelLevelMCH: UILabel!
    @IBOutlet weak var labelLevelDAN: UILabel!
    @IBOutlet weak var labelLevelBLM: UILabel!
    @IBOutlet weak var labelLevelSMN: UILabel!
    @IBOutlet weak var labelLevelRDM: UILabel!
    @IBOutlet weak var labelLevelPLD: UILabel!
    @IBOutlet weak var labelLevelWAR: UILabel!
    @IBOutlet weak var labelLevelDRK: UILabel!
    @IBOutlet weak var labelLevelPSB: UILabel!
    @IBOutlet weak var labelLevelWHM: UILabel!
    @IBOutlet weak var labelLevelSCH: UILabel!
    @IBOutlet weak var labelLevelAST: UILabel!
    @IBOutlet weak var labelLevelBLU: UILabel!
    
    //Work Outlet
    @IBOutlet weak var labelLevelCAR: UILabel!
    @IBOutlet weak var labelLevelBST: UILabel!
    @IBOutlet weak var labelLevelARM: UILabel!
    @IBOutlet weak var labelLevelGST: UILabel!
    @IBOutlet weak var labelLevelLTW: UILabel!
    @IBOutlet weak var labelLevelWEA: UILabel!
    @IBOutlet weak var labelLevelALC: UILabel!
    @IBOutlet weak var labelLevelCLN: UILabel!
    @IBOutlet weak var labelLevelMIN: UILabel!
    @IBOutlet weak var labelLevelBOT: UILabel!
    @IBOutlet weak var labelLevelFSH: UILabel!
    
    
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
                
                self.labelLevelGLA.text = "\(self.characterDetailed!.character.classJobs[0].level)"
                self.labelLevelPLD.text = "\(self.characterDetailed!.character.classJobs[0].level)"
                self.labelLevelMAR.text = "\(self.characterDetailed!.character.classJobs[1].level)"
                self.labelLevelWAR.text = "\(self.characterDetailed!.character.classJobs[1].level)"
                self.labelLevelDRK.text = "\(self.characterDetailed!.character.classJobs[2].level)"
                self.labelLevelPSB.text = "\(self.characterDetailed!.character.classJobs[3].level)"
                self.labelLevelPGL.text = "\(self.characterDetailed!.character.classJobs[4].level)"
                self.labelLevelMNK.text = "\(self.characterDetailed!.character.classJobs[4].level)"
                self.labelLevelLNC.text = "\(self.characterDetailed!.character.classJobs[5].level)"
                self.labelLevelDRG.text = "\(self.characterDetailed!.character.classJobs[5].level)"
                self.labelLevelROG.text = "\(self.characterDetailed!.character.classJobs[6].level)"
                self.labelLevelNIN.text = "\(self.characterDetailed!.character.classJobs[6].level)"
                self.labelLevelSAM.text = "\(self.characterDetailed!.character.classJobs[7].level)"
                self.labelLevelCON.text = "\(self.characterDetailed!.character.classJobs[8].level)"
                self.labelLevelWHM.text = "\(self.characterDetailed!.character.classJobs[8].level)"
                self.labelLevelSCH.text = "\(self.characterDetailed!.character.classJobs[9].level)"
                self.labelLevelAST.text = "\(self.characterDetailed!.character.classJobs[10].level)"
                self.labelLevelARC.text = "\(self.characterDetailed!.character.classJobs[11].level)"
                self.labelLevelBRD.text = "\(self.characterDetailed!.character.classJobs[11].level)"
                self.labelLevelMCH.text = "\(self.characterDetailed!.character.classJobs[12].level)"
                self.labelLevelDAN.text = "\(self.characterDetailed!.character.classJobs[13].level)"
                self.labelLevelTHN.text = "\(self.characterDetailed!.character.classJobs[14].level)"
                self.labelLevelBLM.text = "\(self.characterDetailed!.character.classJobs[14].level)"
                self.labelLevelART.text = "\(self.characterDetailed!.character.classJobs[15].level)"
                self.labelLevelSMN.text = "\(self.characterDetailed!.character.classJobs[15].level)"
                self.labelLevelRDM.text = "\(self.characterDetailed!.character.classJobs[16].level)"
                self.labelLevelBLU.text = "\(self.characterDetailed!.character.classJobs[17].level)"
                
                
                
                
                
                
            }
    }
}

