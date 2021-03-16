//
//  travelDiaryApp.swift
//  Shared
//
//  Created by Li, Muchen on 2021/1/28.
//

import SwiftUI

@main
struct travelDiaryApp: App {
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
