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
    //var image: String
    var rating: Rating
    var description: String
    //var latitude: Double
    //var longitude: Double
}

let testData = [
    Location(name: "Toronto", country: "Canada", rating: .five, description: "A really nice place. Lots of malls."),
    Location(name: "Beijing", country: "China", rating: .five, description: "My home town"),
    Location(name: "Seattle", country: "U.S.", rating: .three, description: "My cousin's place"),
    Location(name: "Tokyo", country: "Japan", rating: .two, description: "We go there almost every break. It is so much fun."),
    Location(name: "Chengde", country: "China", rating: .one, description: "We went there this summer with our dog.")
]
