//
//  LocationDetail.swift
//  Trekr2.0 (iOS)
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
                
                Image(location.image)
                    .resizable()
                    .aspectRatio(contentMode: zoomed ? .fill : .fit)
                    .onTapGesture {
                        withAnimation {
                            zoomed.toggle()
                        }
                    }
                
            }
            
        }
        
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetail(location: testData[1])
    }
}
