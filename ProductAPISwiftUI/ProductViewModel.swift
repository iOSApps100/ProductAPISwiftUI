//
//  ProductViewModel.swift
//  ProductAPISwiftUI
//
//  Created by Vikram Kumar on 18/02/26.
//

import Foundation
import SwiftUI
import Combine

class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []
    private let manager = APIManager()
    
    func fetchProducts() async {
        
        do {
            products = try await manager.request(url: "https://fakestoreapi.com/products")
            print(products)
        } catch {
            
        }
    }
}
