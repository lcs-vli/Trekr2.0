//
//  ContentView.swift
//  Shared
//
//  Created by Li, Muchen on 2021/1/28.
//

import SwiftUI

struct Locations: Identifiable {
    var id = UUID()
    var name = String()
    var country = String()
}

let testData: [Locations] = [Locations(name: "Beijing", country: "China"),Locations(name: "Toronto", country: "Canada"),Locations(name: "Seattle", country: "USA")]

struct ContentView: View {
    var body: some View {
        
        List(testData) { location in
            
            NavigationLink(destination: LocationDetail()){
                VStack(alignment: .leading) {
                    Text(location.name)
                    Text(location.country)
                        .font(.subheadline)
                }
            }
            
        }
        .navigationTitle("Locations")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}
