//
//  LocationStore.swift
//  Trekr2.0 (iOS)
//
//  Created by Li, Muchen on 2021/1/28.
//

import Foundation

class LocationStore: ObservableObject {
    @Published var locations: [Location]

    init(locations: [Location] = []) {
        self.locations = locations
    }
}

let testStore = LocationStore(locations: testData)
