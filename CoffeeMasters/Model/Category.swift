//
//  Category.swift
//  CoffeeMasters
//
//  Created by Willy on 11/10/24.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}
