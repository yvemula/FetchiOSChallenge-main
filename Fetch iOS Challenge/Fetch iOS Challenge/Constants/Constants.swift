//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//

import Foundation

enum Constants{
  enum URLs{
    static let categoryURL = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!
    static func getDetailURL(id: String) -> URL {
      return URL(string: "https://www.themealdb.com/api/json/v1/1/lookup.php?i=\(id)")!
    }
  }
  enum Placeholders{
    static let imagePlaceholder = "https://picsum.photos/seed/picsum/200/300"
    static let loadingPlaceholder = "loading"
  }
}
