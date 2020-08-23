//
//  MovieDetailsView.swift
//  SwiftUI Day2
//
//  Created by tahani alrashidi on 8/22/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct MovieDetailsView: View {
    var movie: Movie
    var body: some View {
        ZStack(alignment: .bottom){
            MovieBG(movie: movie)
            VStack{
                VStack{
                    Spacer()
                    Image(uiImage: movie.movieImg)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300)
                        .overlay(Circle().stroke(Color.white, lineWidth: 6))
                    
                    Text(movie.movieName)
                        .font(.system(size: 45))
                        .bold()
                    
                    Text(movie.mainCharacters.joined(separator: ", "))
                        .font(.system(size: 22))
                    Spacer()
                }
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(movie.mainCharacters, id: \.self){ (character:String) in
                                Image(character).resizable().scaledToFit().frame(width: 200).clipShape(Circle())
                                    .overlay(Circle().stroke(Color.white, lineWidth: 1.5))
                            }
                        }
                    }
                }
                .padding(.vertical)
                .foregroundColor(.white)                
            }
        }
    }


struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: movies[0])
    }
}

struct MovieBG: View {
    var movie: Movie
    var body: some View {
        Group{
            Color.black.opacity(0.3)
                .background(
                    Image(movie.movieName)
                        .resizable()
                        .scaledToFill()
                        .blur(radius: 40)
            )
        }.edgesIgnoringSafeArea(.all)
    }
}
