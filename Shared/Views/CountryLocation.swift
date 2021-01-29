//
//  Country.swift
//  Trekr2.0 (iOS)
//
//  Created by Li, Muchen on 2021/1/28.
//

import SwiftUI

struct CountryLocation: View {
    
    // @ObservedObject var store: LocationStore
    
    var body: some View {
        
        List {
            
            
            HStack {
                Image(systemName: "flag.fill")
                    .resizable()
                    .cornerRadius(8)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Text("China")
                
            }
            
            HStack {
                Image(systemName: "flag.fill")
                    .resizable()
                    .cornerRadius(8)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Text("Canada")
                
            }
            
            HStack {
                Image(systemName: "flag.fill")
                    .resizable()
                    .cornerRadius(8)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Text("Japan")
                
            }
            
            HStack {
                Image(systemName: "flag.fill")
                    .resizable()
                    .cornerRadius(8)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Text("U.S.")
                
            }
            
            
            
        }
        .navigationTitle("Countries")
        
    }
}

struct CountryLocation_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            CountryLocation()
        }
        
    }
}
