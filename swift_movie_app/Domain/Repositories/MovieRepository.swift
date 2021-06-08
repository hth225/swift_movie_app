//
//  MovieRepository.swift
//  swift_movie_app
//
//  Created by Jason Hwang on 2021/06/05.
//

import Foundation

protocol MovieRepository {
    @discardableResult
    func fetchMovieList (query : String,
                         page:Int,
                         cached: @escaping (MoviesPage) -> Void,
                         completion: @escaping (Result<MoviesPage, Error>) -> Void )
                    -> Cancellable?
}
