//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//
import SwiftUI

struct HeaderView: View {
  var url: String
  var name: String
  var area: String
  
    var body: some View {
      VStack{
        AsyncImage(url: URL(string: url )){ image in
          image.resizable()
            .frame(maxWidth:400, maxHeight: 400)
        } placeholder: {
          Image(systemName: "birthday.cake").font(.system(size: 200))
        }
        TitleText(text: name)
        Text(area)
      }
      }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
      HeaderView(url: MockData.mealObject.strMealThumb, name: MockData.mealObject.strMeal, area: "Costa Rican")
    }
}

