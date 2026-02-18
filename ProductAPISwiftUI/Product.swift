//
//  Product.swift
//  ProductAPISwiftUI
//
//  Created by Vikram Kumar on 18/02/26.
//

import Foundation

struct Product: Decodable {
    
    let id: Int
    let title, description, category, image: String
    let price: Double
    let rating: Rate
}

struct Rate: Decodable {
    
    let rate: Double
    let count: Int
}
