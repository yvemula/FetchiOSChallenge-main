//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//

import SwiftUI

struct CategoryListView: View {
    let mealList: [MealObj]
    
    var body: some View {
        List(mealList) { mealItem in
            NavigationLink(destination: DetailView(id: mealItem.id)) {
                MealCellView(meal: mealItem)
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView(mealList: MockData.mealsList)
    }
}


