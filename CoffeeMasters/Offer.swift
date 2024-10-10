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
        VStack {
            Text(title)
                .padding()
                .font(.title)
            Text(description)
                .padding()
        }
    }
}

#Preview {
    Offer(title:"My offer", description: "This is a description")
}
