//
//  APIManager.swift
//  ProductAPISwiftUI
//
//  Created by Vikram Kumar on 18/02/26.
//

import Foundation

enum NetworkError: Error {

    case invalidURL
    case invalidResponse
}

final class APIManager {
    
    func request<T: Decodable>(url: String) async throws -> T {
        
        guard let url = URL(string: url) else {
            throw NetworkError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        // this functions throws, and how you handle throws using do/catch block but it will be handled by calling function of this function, now you can only use try.And in calling function you can use do/catch.
        return try JSONDecoder().decode(T.self, from: data)
       
        
    }
}
