//
//  LocationStore.swift
//  Trekr2.0 (iOS)
//
//  Created by Li, Muchen on 2021/1/28.
//

import Foundation

class LocationStore: ObservableObject {
    
    
    @Published var places: [Location] {
        
        //this property observer will fire when a locatoin is added
        didSet {
            
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(places) {
                
                print("Saving locations list now...")
                
                UserDefaults.standard.setValue(encoded, forKey: "places")
            }
        }
    }

    init(locations: [Location] = []) {
        self.places = locations
    }
}

var testStore = LocationStore(locations: testData)
