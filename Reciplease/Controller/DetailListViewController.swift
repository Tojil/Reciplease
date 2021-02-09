//
//  DetailViewController.swift
//  Reciplease
//
//  Created by Sergio Canto  on 03/02/2021.
//

import UIKit

class DetailListViewController: UIViewController {
    @IBOutlet weak var pictureDetailImageView: UIImageView!
    @IBOutlet weak var recipeNameDetailLabel: UILabel!
    @IBOutlet weak var ingredientsDetailLabel: UILabel!
    @IBOutlet weak var directionsDetailButton: UIButton!
    @IBOutlet weak var caloriesDetailLabel: UILabel!
    @IBOutlet weak var cookTimeDetailLabel: UILabel!
    @IBOutlet weak var pouceDetailImageView: UIImageView!
    @IBOutlet weak var clockDetailImageView: UIImageView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func directionsDetailButton(_ sender: Any) {
    }
    
    
}
