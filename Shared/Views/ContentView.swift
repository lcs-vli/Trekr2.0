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
}

let testData: [Locations] = [Locations(name: "Beijing"),Locations(name: "Toronto"),Locations(name: "Seattle")]

struct ContentView: View {
    var body: some View {
        
        List(testData) { location in
            
            VStack(alignment: .leading) {
                Text(location.name)
                Text("location.country")
                    .font(.subheadline)
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
