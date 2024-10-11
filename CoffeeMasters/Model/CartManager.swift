//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Willy on 11/10/24.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
}
