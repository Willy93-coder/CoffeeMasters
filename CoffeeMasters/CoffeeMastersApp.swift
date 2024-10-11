//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Willy on 26/1/24.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    
    var menuManager = MenuManager()
    var cartManager = CartManager()
    var likesManager = LikesManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
                .environmentObject(likesManager)
        }
    }
}
