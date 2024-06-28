//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//
import Foundation

enum NetworkError: Error {
  case badRequest
  case decodingError
}

/* Needs:
 -Get all desserts
 -Get chosen dessert
 */

class APICaller {
  func getRecipes() async throws -> CategoryResponse {
    let url = Constants.URLs.categoryURL
    
    let(data, response) = try await URLSession.shared.data(from: url)
    
    if (response as? HTTPURLResponse)?.statusCode != 200{
      throw NetworkError.badRequest
    }
    
    do {
      let decoder = JSONDecoder()
      return try decoder.decode(CategoryResponse.self, from: data)
    } catch {
      throw NetworkError.decodingError
    }
  }
  
  func getDetails(id: String) async throws -> recipeResponse {
    let url = Constants.URLs.getDetailURL(id: id)
    print(url)
    let(data, response) = try await URLSession.shared.data(from: url)
    
    if (response as? HTTPURLResponse)?.statusCode != 200{
      throw NetworkError.badRequest
    }
    do {
      let decoder = JSONDecoder()
      return try decoder.decode(recipeResponse.self, from: data)
    } catch {
      print(error)
      throw NetworkError.decodingError
    }
  }

}
