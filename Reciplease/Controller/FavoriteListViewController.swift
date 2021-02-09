//
//  FavoriteViewController.swift
//  Reciplease
//
//  Created by Sergio Canto  on 03/02/2021.
//

import UIKit

class FavoriteListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func favoriteListDetailButton(_ sender: Any) {
    }
}

extension FavoriteListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RecipeService.shared.ingredients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCell", for: indexPath)
        let ingred = RecipeService.shared.ingredients[indexPath.row]
        return cell
    }
    
    
}
