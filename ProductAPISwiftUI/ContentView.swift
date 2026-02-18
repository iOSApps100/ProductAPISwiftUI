//
//  ContentView.swift
//  ProductAPISwiftUI
//
//  Created by Vikram Kumar on 18/02/26.
//

import SwiftUI

struct ContentView: View {
    let viewModel = ProductViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task {
            await viewModel.fetchProducts()
        }
    }
}

#Preview {
    ContentView()
}
