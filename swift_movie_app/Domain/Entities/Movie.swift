//
//  Movie.swift
//  swift_movie_app
//
//  Created by Jason Hwang on 2021/06/05.
//

import Foundation

struct Movie:Equatable, Identifiable {
    typealias Identifier = String
    enum Genre {
        case adventure
        case scienceFiction
        case horror
    }
    
    let id: Identifier
    let title: String?
    let genre: Genre?
    let posterPath : String?
    let overview: String?
    let releaseDate: Date?
}

struct MoviesPage: Equatable {
    let page: Int
    let totalPage: Int
    let movies: [Movie]
}
