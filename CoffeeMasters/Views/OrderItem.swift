//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Willy on 11/10/24.
//

import SwiftUI

struct OrderItem: View {
    
    var item: (Product, Int)
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text("\(item.0.name)")
            Spacer()
            Text("\(Double(item.1)*item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.title)
                .foregroundStyle(Color(.secondaryCoffee))
                .padding()
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }
    }
}

#Preview {
    OrderItem(item: (Product(id: 1, name: "Dummy", description: "", price: 1.25, image: ""), 2))
        .padding()
        .environmentObject(CartManager())
}
