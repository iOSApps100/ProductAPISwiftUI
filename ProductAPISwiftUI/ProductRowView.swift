//
//  ProductRowView.swift
//  ProductAPISwiftUI
//
//  Created by Vikram Kumar on 19/02/26.
//

import SwiftUI

struct ProductRowView: View {
    var product: Product
    var body: some View {
        
        HStack {
            if let url = URL(string: product.image) {
                // Earlier we used Kingfisher and sdwebimage libraries but here in swiftUI we can use AsyncImage
                AsyncImage(url: url) { image in
                    image.resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 100, height: 100)
            }
            VStack(alignment: .leading) {
                Text(product.title)
                    .font(.headline)
                Text(product.category)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
            }
        }
    }
}

#Preview {
    ProductRowView(product: Product.dummy)
}
