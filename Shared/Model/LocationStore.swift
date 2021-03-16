//
//  LocationStore.swift
//  travelDiary (iOS)
//
//  Created by Li, Muchen on 2021/1/28.
//

import Foundation

class LocationStore: ObservableObject {
    
    // MARK: Stored properties
    @Published var locations: [Location] {
        
        //this property observer will fire when a locatoin is added
        didSet {
            
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(locations) {
                
                print("Saving locations list now...")
                
                UserDefaults.standard.setValue(encoded, forKey: "places")
            }
        }
    }
    
    // MARK: Initializer
    init(locations: [Location] = []) {
        // Try to read the existing tasks from the app bundle
        if let readItems = UserDefaults.standard.data(forKey: "places") {
            
            let decoder = JSONDecoder()
            
            // Try to decode the items from JSON
            // Decodes an instance of the specified type
            // .self is required to reference the type objecct
            // So by saying [Locatoin].self we are saying "decode the data from readItems into a structure of type [Location]"
            if let decoded = try? decoder.decode([Location].self, from: readItems) {
                self.locations = decoded
            } else {
                self.locations = []
            }
            return

        } else {
            
            // If nothing could be loaded from the app bundle, or data could not be decoded, show whatever reminders were passed in to the initializer
            self.locations = locations
            
        }
    }
}

var testStore = LocationStore(locations: testData)
