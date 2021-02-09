//
//  FavoriteDetailViewController.swift
//  Reciplease
//
//  Created by Sergio Canto  on 03/02/2021.
//

import UIKit

class FavoriteDetailViewController: UIViewController {
    
    @IBOutlet weak var pictureFavoriteImageView: UIImageView!
    @IBOutlet weak var recipeNameFavoriteLabel: UILabel!
    @IBOutlet weak var ingredientsFavoriteLabel: UILabel!
    @IBOutlet weak var directionsFavoriteButton: UIButton!
    @IBOutlet weak var caloriesFavoriteLabel: UILabel!
    @IBOutlet weak var cookTimeFavoriteLabel: UILabel!
    @IBOutlet weak var pouceFavoriteImageView: UIImageView!
    @IBOutlet weak var clockFavoriteImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func directionsFavoriteButton(_ sender: Any) {
    }
    
}
