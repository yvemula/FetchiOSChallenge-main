//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//

import Foundation
import SwiftUI

// Represents the response structure for the category API endpoint.
struct CategoryResponse: Codable {
    let meals: [MealObj]
}

// Represents a single meal in a category.
struct MealObj: Codable, Identifiable {
    let mealName: String
    let mealThumbnail: String
    let id: String
    
    enum CodingKeys: String, CodingKey {
        case mealName = "strMeal"
        case mealThumbnail = "strMealThumb"
        case id = "idMeal"
    }
}

// Represents the response structure for the recipe API endpoint.
struct RecipeResponse: Decodable {
    let meals: [RecipeObj]
}

// Represents a detailed recipe.
struct RecipeObj: Decodable, Identifiable {
    let id: String
    let mealName: String
    let mealArea: String
    let mealInstructions: String
    let mealThumbnail: String
    let ingredientList: [String]
    let measureList: [String]
    
    enum CodingKeys: String, CodingKey {
        case mealName = "strMeal"
        case mealThumbnail = "strMealThumb"
        case mealArea = "strArea"
        case mealInstructions = "strInstructions"
        case id = "idMeal"
        case strIngredient1, strIngredient2, strIngredient3, strIngredient4, strIngredient5, strIngredient6, strIngredient7, strIngredient8, strIngredient9, strIngredient10, strIngredient11, strIngredient12, strIngredient13, strIngredient14, strIngredient15, strIngredient16, strIngredient17, strIngredient18, strIngredient19, strIngredient20
        case strMeasure1, strMeasure2, strMeasure3, strMeasure4, strMeasure5, strMeasure6, strMeasure7, strMeasure8, strMeasure9, strMeasure10, strMeasure11, strMeasure12, strMeasure13, strMeasure14, strMeasure15, strMeasure16, strMeasure17, strMeasure18, strMeasure19, strMeasure20
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try container.decode(String.self, forKey: .id)
        mealName = try container.decode(String.self, forKey: .mealName)
        mealArea = try container.decode(String.self, forKey: .mealArea)
        mealThumbnail = try container.decode(String.self, forKey: .mealThumbnail)
        mealInstructions = try container.decode(String.self, forKey: .mealInstructions)
        ingredientList = (1...20).compactMap { index in
            try? container.decodeIfPresent(String.self, forKey: CodingKeys(rawValue: "strIngredient\(index)")!)
        }
        measureList = (1...20).compactMap { index in
            try? container.decodeIfPresent(String.self, forKey: CodingKeys(rawValue: "strMeasure\(index)")!)
        }
    }
}

// Contains mock data for testing purposes.
struct MockData {
    static let mealsList = [mealObject, mealObject, mealObject]
    static let mealObject = MealObj(mealName: "Apam balik", mealThumbnail: "https://picsum.photos/seed/picsum/200/300", id: "53049")
    let ingredientList = ["cheese", "cheese"]
    let measureList = [".5", ".5"]
}
