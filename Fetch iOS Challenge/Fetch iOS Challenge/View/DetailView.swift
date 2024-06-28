//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//
import SwiftUI

struct DetailView: View {
  @StateObject var viewModel = DetailViewModel()
  let id: String
  @State private var detailsIsShowing: Bool = true
  
  var body: some View {
    ScrollView{
      HeaderView(
        url: viewModel.recipe?.strMealThumb ?? Constants.Placeholders.imagePlaceholder,
        name: viewModel.recipe?.strMeal ?? Constants.Placeholders.loadingPlaceholder,
        area: viewModel.recipe?.strArea ?? Constants.Placeholders.loadingPlaceholder)
      
      VStack{
        SubtitleText(text: "Ingredients")
        if let recipe = viewModel.recipe {
          ForEach(0..<recipe.ingredients.count, id: \.self) { index in
            let ingredient = recipe.ingredients[index]
            let measure = recipe.measures[index]
            if !ingredient.isEmpty && !measure.isEmpty {
              IngredientView(ingredient: ingredient, measure: measure)
            }
          }
        } else {
          Text(Constants.Placeholders.loadingPlaceholder)
        }
        VStack{
          SubtitleText(text: "Instructions")
          BodyText(text: viewModel.recipe?.strInstructions ?? Constants.Placeholders.loadingPlaceholder)
        }.padding(.horizontal)
      }.task{
        await viewModel.populateDetailView(id: id)
        print(viewModel)
      }
    }
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(id: "53062")
  }
}
