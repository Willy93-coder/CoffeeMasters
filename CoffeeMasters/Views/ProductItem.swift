//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by Willy on 11/10/24.
//

import SwiftUI

struct ProductItem: View {
    
    var product: Product
    
    var body: some View {
        VStack{
            AsyncImage(url: product.imageURL)
                .frame(width: 300, height: 150)
                .background(.accent)
            HStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.title3)
                        .bold()
                    Text("$ \(product.price, specifier: "%.2f")")
                        .font(.caption)
                    
                }.padding(8)
                Spacer()
                LikeButton(product: product)
            }
        }
        .background(.surfaceBackground)
        .cornerRadius(10)
        .padding(.trailing)
    }
}

#Preview {
    ProductItem(product: Product(id: 1, name: "Dummy Product",description: "", price: 1.25, image: "")).environmentObject(LikesManager())
}
