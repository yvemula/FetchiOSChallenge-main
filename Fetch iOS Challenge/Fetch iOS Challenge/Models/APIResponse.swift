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
struct MealObj: Codable, Identifiable{
  let strMeal: String
  let strMealThumb: String
  let id: String
  
  enum CodingKeys: String, CodingKey {
    case strMeal
    case strMealThumb
    case id = "idMeal"
  }
}

// Represents the response structure for the recipe API endpoint.
struct recipeResponse: Decodable {
  let meals: [recipeObj]
}

// Represents a detailed recipe.
struct recipeObj: Decodable, Identifiable {
  let id: String
  let strMeal: String
  let strArea: String
  let strInstructions: String
  let strMealThumb: String
  let ingredients: [String]
  let measures: [String]
  
  
  
  enum CodingKeys: String, CodingKey {
    case strMeal
    case strMealThumb
    case strArea
    case strInstructions
    case id = "idMeal"
    case strIngredient1, strIngredient2, strIngredient3, strIngredient4, strIngredient5, strIngredient6, strIngredient7, strIngredient8, strIngredient9, strIngredient10, strIngredient11, strIngredient12, strIngredient13, strIngredient14, strIngredient15, strIngredient16, strIngredient17, strIngredient18, strIngredient19, strIngredient20
    case strMeasure1, strMeasure2, strMeasure3, strMeasure4, strMeasure5, strMeasure6, strMeasure7, strMeasure8, strMeasure9, strMeasure10, strMeasure11, strMeasure12, strMeasure13, strMeasure14, strMeasure15, strMeasure16, strMeasure17, strMeasure18, strMeasure19, strMeasure20
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    
    id = try container.decode(String.self, forKey: .id)
    strMeal = try container.decode(String.self, forKey: .strMeal)
    strArea = try container.decode(String.self, forKey: .strArea)
    strMealThumb = try container.decode(String.self, forKey: .strMealThumb)
    strInstructions = try container.decode(String.self, forKey: .strInstructions)
    ingredients = (1...20).compactMap { index in
      try? container.decodeIfPresent(String.self, forKey: CodingKeys(rawValue: "strIngredient\(index)")!)
    }
    measures = (1...20).compactMap { index in
      try? container.decodeIfPresent(String.self, forKey: CodingKeys(rawValue: "strMeasure\(index)")!)
    }
  }
  
}

// Contains mock data for testing purposes.
struct MockData {
  static let mealsList = [mealObject, mealObject, mealObject]
  static let mealObject = MealObj(strMeal: "Apam balik", strMealThumb: "https://picsum.photos/seed/picsum/200/300", id: "53049")
  let ingredients = ["cheese", "cheese"]
  let measures = [".5", ".5"]
}


