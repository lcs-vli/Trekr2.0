//
//  RandomPic.swift
//  Trekr2.0 (iOS)
//
//  Created by Li, Muchen on 2021/1/28.
//

import SwiftUI

struct RandomPic: View {
    var body: some View {
        
        VStack{
            Image("chengde")
                .resizable()
                .scaledToFit()
                .padding(.all)
            
            Text("I went there with my family and our dog. It was realy fun.")
                .padding(.all)
            
            Spacer()
        }
        .navigationTitle("Random Picture")
    }
    
}

struct RandomPic_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            RandomPic()
        }
        
    }
}
