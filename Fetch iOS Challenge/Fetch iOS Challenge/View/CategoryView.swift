//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//
import SwiftUI

struct CategoryView: View {
    @StateObject var categoryViewModel: CategoryListViewModel
    
    var body: some View {
        NavigationView {
            CategoryListView(meals: categoryViewModel.recipes)
                .task {
                    await categoryViewModel.populateCategories()
                }
                .navigationTitle("Dessert")
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryViewModel: CategoryListViewModel())
    }
}

