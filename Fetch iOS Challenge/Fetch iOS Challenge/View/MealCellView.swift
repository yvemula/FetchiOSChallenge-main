//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//

import SwiftUI

struct MealCellView: View {
  
  let meal: MealObj
  
    var body: some View {
      HStack (spacing: 20){
        AsyncImage(url: URL(string: meal.strMealThumb)){ image in
          image.resizable()
            .frame(maxWidth: 100, maxHeight: 100)
            .cornerRadius(10)
        } placeholder: {
          ProgressView()
        }
        Text(meal.strMeal)
          .font(.headline)
      }
      .padding(.horizontal)
    }
}

struct MealCellView_Previews: PreviewProvider {
  
    static var previews: some View {
      MealCellView(meal: MockData.mealObject)
    }
}
