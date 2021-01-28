//
//  Location.swift
//  Trekr2.0 (iOS)
//
//  Created by Li, Muchen on 2021/1/28.
//

import Foundation

struct Location: Identifiable {
    var id = UUID()
    var name: String
    var country: String
    var image: String
    var rating: String
    var description: String
}

let testData = [
    Location(name: "Toronto", country: "Canada", image: "toronto", rating: "⭐️⭐️⭐️⭐️⭐️", description: "A really nice place. Lots of malls."),
    Location(name: "Beijing", country: "China", image: "beijing", rating: "⭐️⭐️⭐️⭐️⭐️", description: "My home town"),
    Location(name: "Seattle", country: "USA", image: "seattle", rating: "⭐️⭐️⭐️", description: "My cousin's place"),
    Location(name: "Tokyo", country: "Japan", image: "tokyo", rating: "⭐️⭐️⭐️⭐️⭐️", description: "We go there almost every break. It is so much fun."),
    Location(name: "Chengde", country: "China", image: "chengde", rating: "⭐️⭐️⭐️⭐️", description: "We went there this summer with our dog.")
]
