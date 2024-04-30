//
//  MealCell.swift
//  foodnation
//
//  Created by Brandon Anderson on 4/28/24.
//

import UIKit

class MealCell: UITableViewCell {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var mealTitleLabel: UILabel!
    @IBOutlet weak var mealIngredientLabel: UILabel!
    @IBOutlet weak var mealServingsLabel: UILabel!
    @IBOutlet weak var mealImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mealImage.layer.cornerRadius = 18
        mealImage.layer.borderWidth = 2
        mealImage.layer.borderColor = UIColor.white.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
