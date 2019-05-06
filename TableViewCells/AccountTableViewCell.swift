//
//  AccountTableViewCell.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 5/5/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class AccountTableViewCell: UITableViewCell {

    @IBOutlet weak var accTypeLabel: UILabel!
    @IBOutlet weak var accNoLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
