//
//  Trekr2_0App.swift
//  Shared
//
//  Created by Li, Muchen on 2021/1/28.
//

import SwiftUI

@main
struct Trekr2_0App: App {
    @StateObject private var store = LocationStore()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                
                NavigationView {
                    ContentView(store: store)
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Locations")
                }
                
                NavigationView {
                    ContentView(store: store)
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                
                NavigationView {
                    ContentView(store: store)
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Random Pic")
                }
                
            }
        }
    }
}
