//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Willy on 11/10/24.
//

import SwiftUI

struct MenuPage: View {
    
    @EnvironmentObject var menuManger: MenuManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menuManger.menu) { category in
                    Text(category.name)
                    
                    ForEach(category.products) { product in
                        NavigationLink{
                            DetailsPage()
                        } label: {
                            ProductItem(product: product)
                        }
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage().environmentObject(MenuManager())
}
