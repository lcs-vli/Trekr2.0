//
//  AddCountry.swift
//  Trekr2.0
//
//  Created by Li, Muchen on 2021/3/3.
//

import SwiftUI

struct AddLocation: View {
    // Get a reference to the store of locations (LocationStore)
    @ObservedObject var store: LocationStore
    
    // Details of the new location
    @State private var name = ""
    @State private var country = ""
    @State private var rating = Rating.five
    @State private var description = ""
    
    // Whether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Name: only letters and spaces", text: $name)
                    
                    TextField("country", text: $country)
                    
                    Picker("Rating", selection: $rating) {
                        Text(Rating.five.rawValue).tag(Rating.five)
                        Text(Rating.four.rawValue).tag(Rating.four)
                        Text(Rating.three.rawValue).tag(Rating.three)
                        Text(Rating.two.rawValue).tag(Rating.two)
                        Text(Rating.one.rawValue).tag(Rating.one)
                    }
                    .pickerStyle(DefaultPickerStyle())
                    
                    TextField("description: less than 400 characters", text: $description)
                }
    
            }
            .navigationTitle("New Location")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        saveTask()
                    }
                    .disabled(checkInput(name: name, country: country, description: description))
                }
            }
        }
    }
    
    func saveTask() {
        
        // Add the task to the list of tasks
        store.places.append(Location(name: name,
                                     country: country,
                                     rating: rating,
                                     description: description))
        
        // Dismiss this view
        showing = false

    }
    
    func checkInput(name: String, country: String, description: String) -> Bool{
        for chr in name {
            if (!(chr >= "a" && chr <= "z") && !(chr >= "A" && chr <= "Z") && !(chr == " ")) {
                return true
            }
        }
        if country.count == 0{
            return true
        }
        if description.count >= 400  || description.count == 0{
            return true
        }
        return false
    }

}

struct AddLocation_Previews: PreviewProvider {
    static var previews: some View {
        AddLocation(store: testStore, showing: .constant(true))
    }
}

