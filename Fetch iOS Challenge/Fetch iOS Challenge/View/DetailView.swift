//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//
import SwiftUI

struct DetailView: View {
    @StateObject var detailViewModel = DetailViewModel()
    let id: String
    @State private var isDetailShowing: Bool = true
    
    var body: some View {
        ScrollView {
            if let mealDetail = detailViewModel.recipe {
                HeaderView(
                    url: mealDetail.strMealThumb ?? Constants.Placeholders.imagePlaceholder,
                    name: mealDetail.strMeal ?? Constants.Placeholders.loadingPlaceholder,
                    area: mealDetail.strArea ?? Constants.Placeholders.loadingPlaceholder
                )
                VStack(spacing: 16) {
                    SubtitleText(text: "Ingredients")
                    ForEach(0..<mealDetail.ingredients.count, id: \.self) { index in
                        let ingredient = mealDetail.ingredients[index]
                        let measure = mealDetail.measures[index]
                        if !ingredient.isEmpty && !measure.isEmpty {
                            IngredientView(ingredient: ingredient, measure: measure)
                        }
                    }
                    SubtitleText(text: "Instructions")
                    BodyText(text: mealDetail.strInstructions ?? Constants.Placeholders.loadingPlaceholder)
                }
                .padding(.horizontal)
            } else {
                Text(Constants.Placeholders.loadingPlaceholder)
                    .padding()
            }
        }
        .task {
            await detailViewModel.populateDetailView(id: id)
            print(detailViewModel)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(id: "53062")
    }
}
