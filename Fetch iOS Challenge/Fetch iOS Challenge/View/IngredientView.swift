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
      HStack{
        Text(ingredient).bold()
        Spacer()
        Text(measure)
      }.padding(.horizontal)
      Divider()
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientView(ingredient: "chocolate", measure: "10mg")
    }
}

