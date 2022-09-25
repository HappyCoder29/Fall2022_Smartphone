//
//  FoodTableViewCell.swift
//  FoodImages
//
//  Created by Drillmaps on 24/09/22.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imgFood: UIImageView!
    
    @IBOutlet weak var lblFood: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
