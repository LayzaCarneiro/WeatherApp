//
//  WeatherService.swift
//  WeatherApp
//
//  Created by Layza Maria Rodrigues Carneiro on 25/07/25.
//

import Foundation
import Alamofire

enum WeatherEndpoint {
    static let base = "https://api.openweathermap.org/data/3.0/onecall"
}

struct City {
    let lat: String
    let lon: String
    let name: String
}

class WeatherService {
        
    private let apiKey: String = {
        guard let url = Bundle.main.url(forResource: "APIKey", withExtension: "plist"),
              let data = try? Data(contentsOf: url),
              let plist = try? PropertyListSerialization.propertyList(from: data, format: nil) as? [String: Any],
              let key = plist["WeatherAPIKey"] as? String else {
            fatalError("API key not found")
        }
        return key
    }()
    
    func fetchData(city: City, _ completion: @escaping (ForecastResponse?) -> Void) {
        
        let parameters: [String: String] = [
            "lat": city.lat,
            "lon": city.lon,
            "appid": apiKey,
            "units": "metric"
        ]
        
        AF.request(
            WeatherEndpoint.base,
            method: .get,
            parameters: parameters
        )
        .validate()
        .responseDecodable(of: ForecastResponse.self) { response in
            
            switch response.result {
            case .success(let forecast):
                completion(forecast)
                
            case .failure(let error):
                print("Error: \(error.localizedDescription)")
                completion(nil)
            }
        }
    }
    
}

// MARK: - ForecastResponse
struct ForecastResponse: Codable {
    let current: Forecast
    let hourly: [Forecast]
    let daily: [DailyForecast]
}

// MARK: - Forecast
struct Forecast: Codable {
    let dt: Int
    let temp: Double
    let humidity: Int
    let windSpeed: Double
    let weather: [Weather]

    enum CodingKeys: String, CodingKey {
        case dt, temp, humidity
        case windSpeed = "wind_speed"
        case weather
    }
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main, description, icon: String
}

// MARK: - Daily
struct DailyForecast: Codable {
    let dt: Int
    let temp: Temp
    let weather: [Weather]
}

// MARK: - Temp
struct Temp: Codable {
    let day, min, max, night: Double
    let eve, morn: Double
}

