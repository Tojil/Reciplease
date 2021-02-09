//
//  RecipeData.swift
//  Reciplease
//
//  Created by Sergio Canto  on 06/02/2021.
//

import Foundation

// MARK: - RecipeData
struct RecipeData: Codable {
    let q: String
    let from, to: Int
    let params: Params
    let more: Bool
    let count: Int
    let hits: [Hit]
}

// MARK: - Hit
struct Hit: Codable {
    let recipe: Recipe
    let bookmarked, bought: Bool
}

// MARK: - Recipe
struct Recipe: Codable {
    let label: String
    let image: String
    let source: String
    let url: String
    let shareAs: String
    let yield: Int

    let ingredientLines: [String]
    let ingredients: [Ingredient]
    let calories, totalWeight: Double

}

enum Unit: String, Codable {
    case empty = "%"
    case g = "g"
    case kcal = "kcal"
    case mg = "mg"
    case µg = "µg"
}

// MARK: - Ingredient
struct Ingredient: Codable {
    let text: String
    let quantity: Double
    let measure: String?
    let food: String
    let weight: Double
}

// MARK: - Params
struct Params: Codable {
    let q, id, key: [String]
}

// MARK: - Encode/decode helpers

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}
