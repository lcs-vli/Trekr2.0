//
//  Location.swift
//  travelDiary (iOS)
//
//  Created by Li, Muchen on 2021/1/28.
//

import Foundation

// Identify what properties should be read to and written from JSON
enum LocationCodingKeys: CodingKey {
    case name
    case country
    case rating
    case description
}

class Location: Identifiable, ObservableObject, Codable {
    var id = UUID()
    var name: String
    var country: String
    var rating: Rating
    var description: String

    internal init(id: UUID = UUID(), name: String, country: String, rating: Rating, description: String) {
        self.id = id
        self.name = name
        self.country = country
        self.rating = rating
        self.description = description
    }
    
    // Provide details for how to decode from JSON into an instance of this data type
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: LocationCodingKeys.self)
        
        // Decode "name" property into an instance of the String type
        self.name = try container.decode(String.self, forKey: .name)
        // Decode "country" property into an instance of the String type
        self.country = try container.decode(String.self, forKey: .country)
        // Decode "rating" property into an instance of the Rating type
        self.rating = try container.decode(Rating.self, forKey: .rating)
        // Decode "description" property into an instance of the String type
        self.description = try container.decode(String.self, forKey: .description)
    }
    
    // Provide details for how to encode to JSON from an instance of this type
    func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: LocationCodingKeys.self)

        // Everything is encoded into String types
        try container.encode(name, forKey: .name)
        try container.encode(country, forKey: .country)
        try container.encode(rating.rawValue, forKey: .rating)
        try container.encode(description, forKey: .description)
        
    }
}

let testData = [
    Location(name: "Toronto", country: "Canada", rating: .five, description: "Toronto is a really nice place with lots of malls."),
    Location(name: "Beijing", country: "China", rating: .five, description: "The restaurants are the best."),
    Location(name: "Seattle", country: "U.S.", rating: .three, description: "The weather is nice when it's not raining."),
    Location(name: "Tokyo", country: "Japan", rating: .two, description: "We go there almost every break. It is so much fun."),
    Location(name: "Chengde", country: "China", rating: .one, description: "We went there this summer with our dog. It was our dog's first trip.")
]
