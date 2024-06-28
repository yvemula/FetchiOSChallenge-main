//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//

import Foundation


@MainActor
class DetailViewModel: ObservableObject {
  @Published var ingredients: [String] = []
  @Published var measures: [String] = []
  @Published var recipe: recipeObj? //bc maybe none
  
  func populateDetailView(id: String) async {
    do{
      let detailResponse = try await APICaller().getDetails(id: id)
      print(detailResponse)
      recipe = detailResponse.meals[0]
      ingredients = detailResponse.meals[0].ingredients
      measures = detailResponse.meals[0].measures
    } catch let error {
      print(error)
    }
  }
}
