//
//  LocationStore.swift
//  Trekr2.0 (iOS)
//
//  Created by Li, Muchen on 2021/1/28.
//

import Foundation

class LocationStore: ObservableObject {
    var places: [Location]

    init(locations: [Location] = []) {
        self.places = locations
    }
}

var testStore = LocationStore(locations: testData)
