//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by Willy on 11/10/24.
//

import SwiftUI

struct DetailsPage: View {
    
    @State var quantity: Int = 1
    var product: Product
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            AsyncImage(url: product.imageURL)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            Text(product.description)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            HStack {
                Text("$ \(product.price, specifier: "%.2f")")
                Stepper(value: $quantity, in: 1...10) { }
            }
            .frame(maxWidth: .infinity)
            .padding(30)
            
            Text("Subtotal $\(Double(quantity)*product.price, specifier: "%.2f")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                cartManager.add(product: product, quantity: quantity)
                dismiss()
            }
            .padding()
            .frame(width: 250.0)
            .background(Color(.alternative2))
            .foregroundColor(Color.black)
            .cornerRadius(25)
        }
        .navigationTitle(product.name)
        .toolbar {
            LikeButton(product: product)
        }
    }
}

#Preview {
    DetailsPage(product: Product(id: 1, name: "Dummy", description: "", price: 1.25, image: "")).environmentObject(CartManager()).environmentObject(LikesManager())
}
