//
//  BudgetCell.swift
//  GeneralManager
//
//  Created by Justin Artis on 5/25/17.
//  Copyright © 2017 Justin Artis. All rights reserved.
//

import UIKit

class BudgetCell: UITableViewCell {

    @IBOutlet weak var budgetLabel: UILabel!
    @IBOutlet weak var playersLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var currentBudgetLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
