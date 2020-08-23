//
//  MoviesList.swift
//  SwiftUI Day2
//
//  Created by tahani alrashidi on 8/20/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct MoviesList: View {
    var body: some View {
        NavigationView{
            List(movies){ movie in
                NavigationLink(destination: MovieDetailsView( movie: movie)) {
                    MovieRow(movie: movie)
                }
            }.navigationBarTitle("Movies")
        }.accentColor(.white)
    }
}

struct MoviesList_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        MoviesList()
            .previewDisplayName("List Of Movies")
            .environment(\.colorScheme, .dark)
            MovieRow(movie: movies[0])
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Movie Row")
        }
    }
}

