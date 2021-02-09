//
//  ListPresentTableViewCell.swift
//  Reciplease
//
//  Created by Sergio Canto  on 05/02/2021.
//

import UIKit

class ListPresentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var recipeNameListLabel: UILabel!
    @IBOutlet weak var ingredientsListLabel: UILabel!
    @IBOutlet weak var caloriesListLabel: UILabel!
    @IBOutlet weak var cookTimeListLabel: UILabel!
    @IBOutlet weak var handListImageView: UIImageView!
    @IBOutlet weak var clockListImageView: UIImageView!
    @IBOutlet weak var pictureImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
