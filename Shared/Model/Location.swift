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
    var latitude: Double
    var longitude: Double
}

let testData = [
    Location(name: "Toronto", country: "Canada", image: "toronto", rating: "⭐️⭐️⭐️⭐️⭐️", description: "A really nice place. Lots of malls.", latitude: -43.6532, longitude: -79.3832),
    Location(name: "Beijing", country: "China", image: "beijing", rating: "⭐️⭐️⭐️⭐️⭐️", description: "My home town", latitude: 35.8617, longitude: 104.1954),
    Location(name: "Seattle", country: "U.S.", image: "seattle", rating: "⭐️⭐️⭐️", description: "My cousin's place", latitude: 37.0902, longitude: 95.7129),
    Location(name: "Tokyo", country: "Japan", image: "tokyo", rating: "⭐️⭐️⭐️⭐️⭐️", description: "We go there almost every break. It is so much fun.", latitude: 36.2048, longitude: 138.2529),
    Location(name: "Chengde", country: "China", image: "chengde", rating: "⭐️⭐️⭐️⭐️", description: "We went there this summer with our dog.", latitude: 35.8617, longitude: 104.1954)
]
