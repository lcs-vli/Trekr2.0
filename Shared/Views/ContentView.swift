//
//  ContentView.swift
//  Shared
//
//  Created by Li, Muchen on 2021/1/28.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: LocationStore
    
    // Controls whether the add task is showing
    @State private var showingAddLocation = false
    
    var body: some View {
        
        List{
            ForEach(store.locations) { location in
                LocationCell(location: location)
            }
            
            HStack {
                Spacer()
                Text("\(store.locations.count) Locations")
                    .foregroundColor(.secondary)
                Spacer()
            }
        }
        .navigationTitle("Location")
    
        .toolbar {
            ToolbarItem(placement: .primaryAction){
                Button("Add"){
                    showingAddLocation = true
                }
            }
        }
        .sheet(isPresented: $showingAddLocation) {
            AddLocation(store: testStore, showing: $showingAddLocation)
        }
        // When the app is quit or backgrounded, this closure will run
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
            
            // Save the list of tasks
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(store.locations) {
                print("Saving locations list now, app has been backgrounded or quit...")
                // Actually save the tasks to UserDefaults
                UserDefaults.standard.setValue(encoded, forKey: "places")
            }

        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(store: testStore)
        }
    }
}

struct LocationCell: View {
    var location: Location
    
    var body: some View {
        NavigationLink(destination: LocationDetail(location: location)){
            HStack {
                Image(systemName: "airplane")
                    .resizable()
                    .cornerRadius(8)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                VStack(alignment: .leading) {
                    Text(location.name)
                    Text(location.country)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            
        }
    }
}
