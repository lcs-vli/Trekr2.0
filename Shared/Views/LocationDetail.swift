//
//  LocationDetail.swift
//  travelDiary (iOS)
//
//  Created by Li, Muchen on 2021/1/28.
//

import SwiftUI

struct LocationDetail: View {
    var location: Location
    @State private var zoomed = false
    
    var body: some View {
        
        ScrollView{
            
            VStack{
                Spacer(minLength: 0)
                
//                Image(location.image)
//                    .resizable()
//                    .aspectRatio(contentMode: zoomed ? .fill : .fit)
//                    .padding([.top, .leading, .trailing])
//                    .onTapGesture {
//                        withAnimation {
//                            zoomed.toggle()
//                        }
//                    }
                
                HStack {
                    Text(location.country)
                        .font(.title3)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.leading)
                        
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack{
                    Text("Rating: ")
                        .font(.title3)
                        .bold()
                        .padding(.vertical)
                    
                    Text(location.rating.rawValue)
                    
                }
                .padding(.horizontal)
                
                Text(location.description)
                    .padding(.horizontal)
                    .padding(.bottom)
            
            }
            
        }
        .navigationTitle(location.name)
        
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LocationDetail(location: testData[0])
        }
    }
}
