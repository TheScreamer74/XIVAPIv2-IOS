//
//  ServerTableViewCell.swift
//  XIVAPIv2
//
//  Created by Thomas on 23/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit

class ServerTableViewCell: UITableViewCell {

    @IBOutlet weak var serverNameLabel: UILabel!
    @IBOutlet weak var serverDatacenterLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
