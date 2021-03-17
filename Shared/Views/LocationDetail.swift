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
    @State private var image : Image?
   
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                //Spacer(minLength: 0)

                HStack {
                    Text(location.country)
                        .font(.title3)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.horizontal)
                
                ZStack {
                    Rectangle()
                        .fill(Color.secondary)
                    
                    if image != nil {
                        image?
                            .resizable()
                            .scaledToFit()
                    } else {
                        Text("Tap to select a picture")
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                }
                .onTapGesture {
                    self.showingImagePicker = true
                }
                
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
            
                Spacer()
            }
            .padding()
            
        }
        .navigationTitle(location.name)
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
        }
        
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LocationDetail(location: testData[0])
        }
    }
}
