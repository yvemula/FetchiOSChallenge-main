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
 - Get all desserts
 - Get chosen dessert
 */

class APICaller {
    func getRecipes() async throws -> CategoryResponse {
        let url = Constants.URLs.categoryURL
        
        let (responseData, urlResponse) = try await URLSession.shared.data(from: url)
        
        if (urlResponse as? HTTPURLResponse)?.statusCode != 200 {
            throw NetworkError.badRequest
        }
        
        do {
            let jsonDecoder = JSONDecoder()
            return try jsonDecoder.decode(CategoryResponse.self, from: responseData)
        } catch {
            throw NetworkError.decodingError
        }
    }
    
    func getDetails(id: String) async throws -> RecipeResponse {
        let url = Constants.URLs.getDetailURL(id: id)
        print(url)
        let (responseData, urlResponse) = try await URLSession.shared.data(from: url)
        
        if (urlResponse as? HTTPURLResponse)?.statusCode != 200 {
            throw NetworkError.badRequest
        }
        
        do {
            let jsonDecoder = JSONDecoder()
            return try jsonDecoder.decode(RecipeResponse.self, from: responseData)
        } catch {
            print(error)
            throw NetworkError.decodingError
        }
    }
}
