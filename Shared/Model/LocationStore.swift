//
//  LocationStore.swift
//  travelDiary (iOS)
//
//  Created by Li, Muchen on 2021/1/28.
//

import Foundation

class LocationStore: ObservableObject {
    
    @Published var locations: [Location] {
        
        didSet {
            
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(locations) {
                
                print("Saving locations list now...")
                
                UserDefaults.standard.setValue(encoded, forKey: "places")
            }
        }
    }
    
    init(locations: [Location] = []) {
        
        if let readItems = UserDefaults.standard.data(forKey: "places") {
            
            let decoder = JSONDecoder()
            
            if let decoded = try? decoder.decode([Location].self, from: readItems) {
                self.locations = decoded
            } else {
                self.locations = []
            }
            return

        } else {

            self.locations = locations
            
        }
    }
}

var testStore = LocationStore(locations: testData)
