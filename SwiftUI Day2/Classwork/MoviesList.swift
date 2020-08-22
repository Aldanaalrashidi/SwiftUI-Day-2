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
            List{
                NavigationLink(destination: MovieDetailsView(movieName: "Aladdin", mainCharacters: ["Mena Massoud", "Naomi Scott", "Will Smith"], movieImg: #imageLiteral(resourceName: "Aladdin"))) {
                    MovieRow(movieName: "Aladdin", mainCharacters: ["Mena Massoud", "Naomi Scott", "Will Smith"])
                }
                NavigationLink(destination: MovieDetailsView(movieName: "Maleficent", mainCharacters: ["Angelina Jolie", "Elle Fanning", "Sam Riley"], movieImg: #imageLiteral(resourceName: "Maleficent"))) {
                    MovieRow(movieName: "Maleficent", mainCharacters: ["Angelina Jolie", "Elle Fanning", "Sam Riley"])
                }
                NavigationLink(destination: MovieDetailsView(movieName: "Beauty & the Beast", mainCharacters: ["Dan Stevens", "Emma Watson", "Luke Evans"], movieImg: #imageLiteral(resourceName: "Beauty & the Beast"))) {
                    MovieRow(movieName: "Beauty & the Beast", mainCharacters: ["Dan Stevens", "Emma Watson", "Luke Evans"])
                }
            }.navigationBarTitle("Movies")
        }
    }
}

struct MoviesList_Previews: PreviewProvider {
    static var previews: some View {
        MoviesList()
    }
}

struct MovieRow: View {
    var movieName: String
    var mainCharacters: [String]
    var body: some View {
        HStack(alignment: .center){
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(height: 90)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(movieName)
                    .font(.largeTitle)
                Text(mainCharacters.joined(separator: ", "))
                    .font(.system(size: 17))
            }
        }.padding(.vertical)
    }
}
