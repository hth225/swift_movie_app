//
// Created by Jason Hwang on 2021/06/08.
//

import Foundation

protocol SearchMovieUseCase {
    func execute(requestParam: SearchMovieUseCaseParam,
                 cached: @escaping (MoviesPage) -> Void,
                 completion: @escaping (Result<MoviesPage, Error>) -> Void) -> Cancellable?
}

final class DefaultSearchMovieUseCase: SearchMovieUseCase {
    private let movieRepository: MovieRepository

    init(movieRepository: MovieRepository) {
        self.movieRepository = movieRepository
    }

    func execute(requestParam: SearchMovieUseCaseParam, cached: @escaping (MoviesPage) -> Void, completion: @escaping (Result<MoviesPage, Error>) -> Void) -> Cancellable? {
        return movieRepository.fetchMovieList(query: requestParam.query, page: requestParam.page, cached: cached,
                                              completion: { result in
//                    if case .success = result {
//
//                    }
                                                  completion(result)
                                              })
    }
}

struct SearchMovieUseCaseParam {
    let query: String
    let page: Int
}
