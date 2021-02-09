//
//  FavoriteListTableViewCell.swift
//  Reciplease
//
//  Created by Sergio Canto  on 05/02/2021.
//

import UIKit

class FavoriteListTableViewCell: UITableViewCell {

    @IBOutlet weak var favoriteListDetailButton: UIButton!
    @IBOutlet weak var favoriteListRecipeNameLabel: UILabel!
    @IBOutlet weak var favoriteListIngredientsLabel: UILabel!
    @IBOutlet weak var favoriteListHandImageView: UIImageView!
    @IBOutlet weak var favoriteListClockImageView: UIImageView!
    @IBOutlet weak var favoriteListeCaloriesLabel: UILabel!
    @IBOutlet weak var favoriteListCookTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
