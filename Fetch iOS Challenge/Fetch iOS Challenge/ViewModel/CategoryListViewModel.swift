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
            let categoryResponse = try await fetchRecipes()
            updateRecipes(with: categoryResponse)
        } catch {
            handle(error: error)
        }
    }
    
    private func fetchRecipes() async throws -> CategoryResponse {
        return try await APICaller().getRecipes()
    }
    
    private func updateRecipes(with response: CategoryResponse) {
        recipes = response.meals.sorted { $0.strMeal < $1.strMeal }
    }
    
    private func handle(error: Error) {
        print(error)
    }
}




