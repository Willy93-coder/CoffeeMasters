//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Willy on 29/1/24.
//

import SwiftUI

struct Offer: View {
    
    var title = ""
    var description = ""
    
    var body: some View {
        ZStack {
            Image(.backgroundPattern)
                .frame(maxWidth:.infinity, maxHeight: 200)
                .clipped()
            VStack {
                Text(title)
                    .padding()
                    .font(.title)
                    .background(.cardBackground)
                Text(description)
                    .padding()
                    .background(.cardBackground)
            }
        }
    }
}

#Preview {
    Offer(title:"My offer", description: "This is a description")
}
