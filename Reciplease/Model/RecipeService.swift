//
//  RecipeService.swift
//  Reciplease
//
//  Created by Sergio Canto  on 06/02/2021.
//

import Foundation

class RecipeService {
    static let shared = RecipeService()
    private init () {}
    
    private(set) var ingredients = [String]()
    
    func add(ingredient: String) {
        ingredients.append(ingredient)
    }
    
    func removeAIngredients(at index: Int) {
        ingredients.remove(at: index)
    }
}
