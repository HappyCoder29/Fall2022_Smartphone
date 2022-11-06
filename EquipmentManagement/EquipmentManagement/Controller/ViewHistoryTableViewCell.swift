//
//  ViewHistoryTableViewCell.swift
//  EquipmentManagement
//
//  Created by Drillmaps on 30/10/22.
//

import UIKit

class ViewHistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var lblDate: UILabel!
    
    @IBOutlet weak var lblActivity: UILabel!
    
    @IBOutlet weak var lblNatureOfProblem: UILabel!
    
    @IBOutlet weak var lblRectificationWork: UILabel!
    
    @IBOutlet weak var lblRemarks: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
