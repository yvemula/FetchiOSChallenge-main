//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//

import Foundation

@MainActor
class DetailViewModel: ObservableObject {
    @Published var ingredientList: [String] = []
    @Published var measureList: [String] = []
    @Published var selectedRecipe: Recipe? // Changed from recipeObj to Recipe
    
    func populateDetailView(id: String) async {
        do {
            let detailResponse = try await APICaller().getDetails(id: id)
            print(detailResponse)
            selectedRecipe = detailResponse.meals[0]
            ingredientList = detailResponse.meals[0].ingredients
            measureList = detailResponse.meals[0].measures
        } catch let error {
            print(error)
        }
    }
}
