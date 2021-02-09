//
//  AddViewController.swift
//  Reciplease
//
//  Created by Sergio Canto  on 03/02/2021.
//

import UIKit

class AddListViewController: UIViewController {
    
    @IBOutlet weak var whatsInFridgeLabel: UILabel!
    @IBOutlet weak var addTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    private let service: RequestService = RequestService()
    var recipeData: RecipeData?
    
    override func viewWillAppear(_ animated: Bool) {
        //tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        addTextField.resignFirstResponder()
    }
    
    @IBAction func addButton(_ sender: Any) {
        // get text
        let ingredient = addTextField.text
        let i = " - " + " " + ingredient!
        // show text in cell
        RecipeService.shared.add(ingredient: i)
        self.tableView.reloadData()
    }
    
    @IBAction func clearButton(_ sender: Any) {
    }
    
    @IBAction func searchButton(_ sender: Any) {
        // appel reseau recuperer RecipeData
        service.getData(text: addTextField.text!+"&") { result in
            switch result {
            case .success(let data):
                self.recipeData = data
                self.performSegue(withIdentifier:"list", sender: nil)
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let listVC = segue.destination as? ListViewController else { return }
        listVC.recipeData = recipeData
    }
    
}
extension AddListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RecipeService.shared.ingredients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "addListCell", for: indexPath)
        let ingred = RecipeService.shared.ingredients[indexPath.row]
        cell.textLabel?.text = ingred.description
        return cell
    }
    
}

//MARK: - Extension

extension String {
    var words: [String] {
        return components(separatedBy: .afURLQueryAllowed)
    }
}

extension AddListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            RecipeService.shared.removeAIngredients(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}

