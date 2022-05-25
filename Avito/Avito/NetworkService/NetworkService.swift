//
//  NetworkService.swift
//  Avito
//
//  Created by Kalandarov Vakil on 22.05.2022.
//

import Foundation

final class NetworkService {
    func createNetworkService(http: String, complition: @escaping(Result<EmployeesModel, Error>)-> Void) {
        guard let url = URL(string: http) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                complition(.failure(error))
                return
            }
            guard let data = data else { return }
            do {
                let text = try JSONDecoder().decode(EmployeesModel.self, from: data)
                complition(.success(text))
            } catch let jsonError {
                complition(.failure(jsonError))
            }
        }.resume()
    }
}
