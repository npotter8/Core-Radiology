//
//  InjuriesTableViewCell.swift
//  Core: Radiology
//
//  Created by Nathan Potter on 11/12/17.
//  Copyright © 2017 Core Medical Apps, LLC. All rights reserved.
//

import UIKit

class InjuriesTableViewCell: UITableViewCell {

    @IBOutlet var injuryLabel: UILabel!
    @IBOutlet var injurySwitch: UISegmentedControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
