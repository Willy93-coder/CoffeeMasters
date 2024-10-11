//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Willy on 11/10/24.
//

import SwiftUI

struct MenuPage: View {
    
    @EnvironmentObject var menuManger: MenuManager
    @State var search: String = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menuManger.menu) { category in
                    if category.filteredItems(text: search).count > 0 {
                        Text(category.name)
                            .listRowBackground(Color(.cardBackground))
                            .foregroundStyle(.secondaryCoffee)
                            .padding()
                    }
                    
                    ForEach(category.filteredItems(text: search)) { item in
                        ZStack {
                            NavigationLink(destination: DetailsPage(product: item)) {
                                EmptyView()
                            }.opacity(0)
                            ProductItem(product: item)
                                .padding(.top)
                                .padding(.leading)
                                .padding(.bottom, 12)
                        }
                    }
                }
            }
            .navigationTitle("Products")
            .searchable(text: $search)
        }
    }
}

#Preview {
    MenuPage().environmentObject(MenuManager())
}
