//
//  RequestService.swift
//  Reciplease
//
//  Created by Sergio Canto  on 03/02/2021.
//

import Foundation
import Alamofire

final class RequestService {

    // MARK: - Properties

    private let session: AlamofireSession

    // MARK: - Initializer

    init(session: AlamofireSession = RecipeSession()) {
        self.session = session
    }

    // MARK: - Management

    func getData(text: String, callback: @escaping (Result<RecipeData, RecipeError>) -> Void) {
        guard let textEncoded = text.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else { return }
        guard let url = URL(string: "https://test-es.edamam.com/search?id=59ec59a0&key=34b09ff0e7a2bbc06ca9940e82d47a11&q=\(textEncoded)") else { return }
        session.request(url: url) { dataResponse in
            guard let data = dataResponse.data else {
                callback(.failure(.noData))
                return
            }
            guard dataResponse.response?.statusCode == 200 else {
                callback(.failure(.invalidResponse))
                return
            }
            guard let dataDecoded = try? JSONDecoder().decode(RecipeData.self, from: data) else {
                callback(.failure(.undecodableData))
                return
            }
            callback(.success(dataDecoded))
        }
    }
    
    enum RecipeError: Error {
        case noData, invalidResponse, undecodableData
    }
    
}
