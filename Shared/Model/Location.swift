//
//  Location.swift
//  Trekr2.0 (iOS)
//
//  Created by Li, Muchen on 2021/1/28.
//

import Foundation

struct Location: Decodable, Identifiable {
    var id = UUID()
    var name: String
    var country: String
    var image: String
    var rating: Rating
    var description: String
    //var latitude: Double
    //var longitude: Double
}

let testData = [
    Location(name: "Toronto", country: "Canada", image: "toronto", rating: .five, description: "A really nice place. Lots of malls."),
    Location(name: "Beijing", country: "China", image: "beijing", rating: .five, description: "My home town"),
    Location(name: "Seattle", country: "U.S.", image: "seattle", rating: .three, description: "My cousin's place"),
    Location(name: "Tokyo", country: "Japan", image: "tokyo", rating: .two, description: "We go there almost every break. It is so much fun."),
    Location(name: "Chengde", country: "China", image: "chengde", rating: .one, description: "We went there this summer with our dog.")
]
