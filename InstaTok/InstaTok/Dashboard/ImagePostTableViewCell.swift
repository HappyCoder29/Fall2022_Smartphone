//
//  ImagePostTableViewCell.swift
//  InstaTok
//
//  Created by Drillmaps on 12/11/22.
//

import UIKit

class ImagePostTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var dateTime: UILabel!
    @IBOutlet weak var caption: UILabel!
    
    @IBOutlet weak var location: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    
}
