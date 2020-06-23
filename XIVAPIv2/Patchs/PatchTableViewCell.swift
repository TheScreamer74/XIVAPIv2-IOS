//
//  PatchTableViewCell.swift
//  XIVAPIv2
//
//  Created by Thomas on 23/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit

class PatchTableViewCell: UITableViewCell {
    @IBOutlet weak var patchNameLabel: UILabel!
    @IBOutlet weak var patchVersionLabel: UILabel!
    @IBOutlet weak var patchImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
