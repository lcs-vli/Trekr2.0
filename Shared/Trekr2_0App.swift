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
                    ContentView(store: testStore)
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Locations")
                }
                
            }
        }
    }
}
