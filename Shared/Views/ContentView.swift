//
//  ContentView.swift
//  Shared
//
//  Created by Li, Muchen on 2021/1/28.
//

import SwiftUI

//struct Locations: Identifiable {
//    var id = UUID()
//    var image = String()
//    var name = String()
//    var country = String()
//}
//
//let testData: [Locations] = [
//    Locations(image: "beijing", name: "Beijing", country: "China"),
//    Locations(image: "toronto", name: "Toronto", country: "Canada"),
//    Locations(image: "seattle", name: "Seattle", country: "USA")]

struct ContentView: View {
    
    @ObservedObject var store: LocationStore
    
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
            ToolbarItem(placement: .navigationBarTrailing){
                EditButton()
            }
            ToolbarItem(placement: .navigationBarLeading){
                Button("Add", action: placeholder)
            }
        }
        
    }
    
    func placeholder(){
        withAnimation {
            store.locations.append(Location(name: "hi", country: " ", image: " ", rating: " ", description: " ", latitude: 1, longitude: 2))
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
