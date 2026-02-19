//
//  Product.swift
//  ProductAPISwiftUI
//
//  Created by Vikram Kumar on 18/02/26.
//

import Foundation

struct Product: Decodable, Identifiable {
    
    let id: Int
    let title, description, category, image: String
    let price: Double
    let rating: Rate
    
    static var dummy: Product {
        Product(id: 1, title: "fdhfldsjfhldhflhfldfhsdlhfdsfdf", description: "fjdshfljdhfjldhfjkldhfjlkdhfldkjhfdjklhfkldhfjkdhflkjdhfjkldhfdf", category: "mens's clothing", image: "", price: 109.95, rating: Rate(rate: 3.9, count: 120))
    }
}

struct Rate: Decodable {
    
    let rate: Double
    let count: Int
}
