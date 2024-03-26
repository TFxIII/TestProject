//
//  NetworkService.swift
//  TrynusCourseProject
//
//  Created by Trynus Fedir on 25.03.2024.
//

import Foundation
import Alamofire


class NetworkService {
    
    let path = "https://api.themoviedb.org/3/discover/movie?api_key=65a081f93338ea1a699e5b9c9dc0cfc0"
    
    func getMovies(completion: @escaping (Result<Page, Error>) -> Void) {
        AF.request(path)
            .validate()
            .responseDecodable(of: Page.self) { response in
                switch response.result {
                case .success(let success):
                    completion(.success(success))
                case .failure(let error):
                    print(error)
                    completion(.failure(error))
                }
            }
    }
    
}
