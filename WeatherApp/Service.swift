//
//  Service.swift
//  WeatherApp
//
//  Created by Layza Maria Rodrigues Carneiro on 20/07/25.
//

import Foundation

struct City {
    let lat: String
    let lon: String
    let name: String
}

class Service {
    
    private let baseURL: String = "https://api.openweathermap.org/data/3.0/onecall"
    private let apiKey: String = "e0a23789d11fbeaaaa65c7754e6cd229"
    private let session = URLSession.shared
    
    func fetchData(city: City, _ completion: @escaping (String) -> Void) {
        let urlString = "\(baseURL)?lat=\(lat)&lon=\(lon)&appid=\(apiKey)"
        
        guard let url = URL(string: urlString) else { return }
        
        let task = session.dataTask(with: url) { data, response, error in
            completion("completion")
        }
        
        task.resume()
    }
    
}

// TODO: study -
// classe x struct
// singleton
// @escaping
