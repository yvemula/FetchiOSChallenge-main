//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//
import SwiftUI

struct IngredientView: View {
    var ingredient: String
    var measure: String
  
    var body: some View {
        VStack {
            HStack {
                Text(ingredient)
                    .bold()
                Spacer()
                Text(measure)
            }
            .padding(.horizontal)
            Divider()
                .padding(.horizontal)
        }
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientView(ingredient: "Chocolate", measure: "10mg")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

