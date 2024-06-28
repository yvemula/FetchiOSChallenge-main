//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      CategoryView(viewModel: CategoryListViewModel())
    }
}

#Preview {
    ContentView()
}
