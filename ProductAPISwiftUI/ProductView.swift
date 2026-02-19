//
//  ProductView.swift
//  ProductAPISwiftUI
//
//  Created by Vikram Kumar on 19/02/26.
//

import SwiftUI

struct ProductView: View {
    @StateObject var viewModel = ProductViewModel()
    var body: some View {
        NavigationStack {
            List(viewModel.products) { product in
                ProductRowView(product: product)
                
            }
            .navigationTitle("Products")
        }
        .task {
            await viewModel.fetchProducts()
        }
       
    }
}

#Preview {
    ProductView()
}
