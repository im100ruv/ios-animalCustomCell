//
//  AnimalCustomCellTableViewCell.swift
//  AnimalCustomCell
//
//  Created by Im100ruv on 22/01/18.
//  Copyright © 2018 Im100ruv. All rights reserved.
//

import UIKit

class AnimalCustomCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var animalImg: UIImageView!
    @IBOutlet weak var animalLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
