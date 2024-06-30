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
        VStack {
            AsyncImage(url: URL(string: url)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 400, height: 400)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 400)
                        .clipped()
                case .failure:
                    Image(systemName: "birthday.cake")
                        .font(.system(size: 200))
                        .frame(width: 400, height: 400)
                        .foregroundColor(.gray)
                @unknown default:
                    EmptyView()
                }
            }
            TitleText(text: name)
                .padding(.top)
            Text(area)
                .padding(.bottom)
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(url: MockData.mealObject.strMealThumb, name: MockData.mealObject.strMeal, area: "Costa Rican")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

