//
//  LikeManager.swift
//  CoffeeMasters
//
//  Created by Willy on 11/10/24.
//

import Foundation

class LikesManager: ObservableObject {
    static let key = "likes"
    @Published var likes: [Int] = []
    
    init() {
        likes = UserDefaults.standard.array(forKey: LikesManager.key) as? [Int] ?? []
    }
    
    func isLiked(id: Int) -> Bool {
        return likes.contains(id)
    }
    
    func toggle(_ id: Int) {
        if isLiked(id: id) {
            likes.removeAll { $0 == id }
        } else {
            likes.append(id)
        }
        UserDefaults.standard.set(likes, forKey: LikesManager.key)
    }
}
