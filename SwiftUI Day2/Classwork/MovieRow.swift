//
//  MovieRow.swift
//  SwiftUI Day2
//
//  Created by tahani alrashidi on 8/23/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    var body: some View {
        HStack(alignment: .center){
            Image(movie.movieName)
                .resizable()
                .scaledToFit()
                .frame(height: 90)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(movie.movieName)
                    .font(.largeTitle)
                Text(movie.mainCharacters.joined(separator: ", "))
                    .font(.system(size: 17))
            }
        }.padding(.vertical)
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieRow(movie: movies[0])
    }
}
