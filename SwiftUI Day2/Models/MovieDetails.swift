//
//  MovieDetails.swift
//  SwiftUI Day2
//
//  Created by tahani alrashidi on 8/23/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import Foundation
import SwiftUI

struct Movie: Identifiable, Hashable{
    var movieName: String
    var mainCharacters: [String]
    var movieImg : UIImage!
    var id = UUID()
}

let aladdin = Movie(movieName: "Aladdin", mainCharacters: ["Mena Massoud", "Naomi Scott", "Will Smith"], movieImg: #imageLiteral(resourceName: "Aladdin"))

let maleficent = Movie(movieName: "Maleficent", mainCharacters: ["Angelina Jolie", "Elle Fanning", "Sam Riley"], movieImg: #imageLiteral(resourceName: "Maleficent"))

let beautyAndTheBeast = Movie(movieName: "Beauty & the Beast", mainCharacters: ["Dan Stevens", "Emma Watson", "Luke Evans"], movieImg: #imageLiteral(resourceName: "Beauty & the Beast"))

let movies = [aladdin, maleficent, beautyAndTheBeast]

