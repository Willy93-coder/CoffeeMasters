//
//  LikeButton.swift
//  CoffeeMasters
//
//  Created by Willy on 11/10/24.
//

import SwiftUI

struct LikeButton: View {
    
    @EnvironmentObject var likesManager: LikesManager
    var product: Product
    
    var body: some View {
        Image(systemName: likesManager.isLiked(id: product.id) ? "heart.fill" : "heart")
            .padding()
            .foregroundStyle(.secondaryCoffee)
            .accessibilityLabel(likesManager.isLiked(id: product.id) ? "Dislike" : "Like")
            .onTapGesture {
                likesManager.toggle(product.id)
            }
    }
}

#Preview {
    LikeButton(product: Product(id: 3, name: "Coffee", description: "Coffee description", price: 2.3, image: "")).environmentObject(LikesManager())
}
