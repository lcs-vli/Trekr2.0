//
//  Location.swift
//  Trekr2.0 (iOS)
//
//  Created by Li, Muchen on 2021/1/28.
//

import Foundation

class Location: Identifiable, ObservableObject {
    //create id for each item so that know which one to delete
    var id = UUID()
    var name: String
    var country: String
    var description: String
    var more: String?
    var latitude: Double?
    var longitude: Double?
    var picture: String?
    var rating: Rating
    
    internal init(id: UUID = UUID(), name: String, country: String, description: String, more: String?, latitude: Double?, longitude: Double?, picture: String?, rating: Rating){
        self.id = id
        self.name = name
        self.country = country
        self.description = description
        self.more = more?
        self.latitude = latitude?
        self.longitude = longitude?
        self.picture = picture?
        self.rating = Rating
    }
}

let testData = [
    Location(name: "Toronto", country: "Canada", description: "I lived there during Chirstams brak", more: "it was fun", latitude: 43.6532, longitude: 79.3832, picture: "toronto", rating: 5)
    Location(name: "Beijing", country: "China", description: "My home", more: "the food is the best", latitude: 39.9042, longitude: 116.4074, picture: "beijing", rating: 5)
]
