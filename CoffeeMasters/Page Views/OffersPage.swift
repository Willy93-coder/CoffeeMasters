//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Willy on 10/10/24.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            List {
                Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                Offer(title: "Welcome Gift", description: "25% off. On your first order.")
            }
            .navigationTitle("Offers")
        }
    }
}

#Preview {
    OffersPage()
}
