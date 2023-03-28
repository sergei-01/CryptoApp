//
//  NetworkManager.swift
//  CryptoTracker
//
//  Created by Sergey Agmalin on 2022-07-25.
//

import Foundation
import Combine

final class NetworkManager {
    
    enum NetworkingError: LocalizedError {
        case badURLResponse(url: URL)
        case unknown
        
        var errorDescription: String? {
            switch self {
            case .badURLResponse(url: let urlResponse):
                return "[❌] Bad response from URL: \(urlResponse)"
            case .unknown:
                return "[⚠️] Unknown error occured."
            }
        }
    }
    
    static func download(url: URL) -> AnyPublisher<Data, Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
//            .subscribe(on: DispatchQueue.global(qos: .default)) Don't need this line, dataTaskPublisher, does it automatically it is already on the background thread.
            .tryMap({ try handleURLResponse(output: $0, url: url) })
            .retry(3) // If URLResponse fails, it will try 3 times downloading the data again.
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard let response = output.response as? HTTPURLResponse, response.statusCode >= 200 &&
                response.statusCode < 300 else {
            throw NetworkingError.badURLResponse(url: url)
        }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            print("Completion: \(completion)")
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}
