//
//  AccountHistoryTableViewCell.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 5/6/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class AccountHistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
