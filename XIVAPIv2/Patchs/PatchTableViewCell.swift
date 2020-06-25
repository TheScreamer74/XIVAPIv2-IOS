//
//  PatchTableViewCell.swift
//  XIVAPIv2
//
//  Created by Thomas on 23/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit

class PatchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var patchImageview: UIImageView!
    @IBOutlet weak var PatchNameLabel: UILabel!
    @IBOutlet weak var PatchVersionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
