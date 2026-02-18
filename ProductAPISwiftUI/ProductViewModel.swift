//
//  ProductViewModel.swift
//  ProductAPISwiftUI
//
//  Created by Vikram Kumar on 18/02/26.
//

import Foundation

class ProductViewModel {
    
    var products: [Product] = []
    private let manager = APIManager()
    
    func fetchProducts() async {
        
        do {
            let responseProducts: [Product] = try await manager.request(url: "https://fakestoreapi.com/products")
            print(responseProducts)
        } catch {
            
        }
    }
}
