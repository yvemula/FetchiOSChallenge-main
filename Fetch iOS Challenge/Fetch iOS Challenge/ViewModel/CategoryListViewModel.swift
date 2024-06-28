//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//
import Foundation

@MainActor
class CategoryListViewModel: ObservableObject {
  
  @Published var recipes: [MealObj] = []
  
  func populateCategories() async {
    do {
      let categoryResponse = try await APICaller().getRecipes()
      recipes = categoryResponse.meals.sorted{ $0.strMeal < $1.strMeal } //Data come in sorted, but sorting just in case
    } catch let error {
      print(error)
    }
  }
}



