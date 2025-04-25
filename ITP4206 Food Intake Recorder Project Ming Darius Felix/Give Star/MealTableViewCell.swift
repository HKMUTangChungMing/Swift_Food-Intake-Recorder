//
//  MealTableViewCell.swift
//  Give Star
//
//  IT114118-2A
//  ITP4206 - Proprietary Mobile Application Development Project Guide
//  Created by 210056555 Tang Chung Ming
//  Created by 210069121 Shek Wai Kit
//  Created by 210397362 Cheng Man Hei
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
