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
        HStack(spacing: 20) {
            AsyncImage(url: URL(string: meal.strMealThumb)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 100, height: 100)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                        .cornerRadius(10)
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.gray)
                @unknown default:
                    EmptyView()
                }
            }
            Text(meal.strMeal)
                .font(.headline)
                .lineLimit(1)
                .minimumScaleFactor(0.8)
        }
        .padding(.horizontal)
    }
}

struct MealCellView_Previews: PreviewProvider {
  
    static var previews: some View {
        MealCellView(meal: MockData.mealObject)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
