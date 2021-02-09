//
//  RequestViewController.swift
//  Reciplease
//
//  Created by Sergio Canto  on 03/02/2021.
//

import UIKit

class ListViewController: UIViewController {
    
    //MARK: - Properties
    
    
    
    var recipeData: RecipeData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func detailListButton(_ sender: Any) {
    }
}

extension ListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (recipeData?.hits.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as? ListPresentTableViewCell
        else { return UITableViewCell() }
        let entre = recipeData?.hits[indexPath.row]
        cell.recipeNameListLabel.text = entre?.recipe.label
        cell.ingredientsListLabel.text = entre?.recipe.ingredientLines[...].description
        cell.pictureImageView.image = UIImage(contentsOfFile: "\(String(describing: entre?.recipe.image))")
        cell.caloriesListLabel.text = (entre?.recipe.calories.description)! + " " + "k"
        cell.cookTimeListLabel.text = ((entre?.recipe.yield.description)!) + "mn"
        return cell
    }
}
