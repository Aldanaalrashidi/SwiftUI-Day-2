//
//  MovieDetailsView.swift
//  SwiftUI Day2
//
//  Created by tahani alrashidi on 8/22/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct MovieDetailsView: View {
    var movieName: String
    var mainCharacters: [String]
    var movieImg : UIImage
    var body: some View {
        ZStack{
            Group{
                Image(movieName)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
            }.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center){
                Image(uiImage: movieImg)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300)
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                
                Text(movieName)
                    .font(.system(size: 45))
                    .bold()
                
                Text(mainCharacters.joined(separator: ", "))
                    .font(.system(size: 22))
                Spacer()
            }
            .padding(.vertical)
            .foregroundColor(.white)
            .shadow(radius: 8)
            
        }
    }
}


struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movieName: "Aladdin", mainCharacters: ["Mena Massoud", "Naomi Scott", "Will Smith"], movieImg: #imageLiteral(resourceName: "Aladdin"))
    }
}
