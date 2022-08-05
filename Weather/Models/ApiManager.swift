//
//  TakeWeather.swift
//  Weather
//
//  Created by Ilya on 1.08.22.
//

import Foundation
import UIKit

public final class ApiManager  {
    
    
    static let shared = ApiManager()
//    public override init(){
//        super.init()
//
//    }
    
   
    
    func getWeatherInfo(urlApi: String, latitude: Double, longtitude: Double, completionHandler: @escaping (CurrentWeatherData) -> ()) {
        
        let urlApi: String = "weather"
        let API_KEY = "b74e84c603b60c25a37da2f8a748392d"
        let url = URL(string: "https://api.openweathermap.org/data/2.5/\(urlApi )?lat=\(latitude.description)&lon=\(longtitude.description)&appid=\(API_KEY)")!
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error)
            }
            guard let json = data else {return}
            do {
                let data = try JSONDecoder().decode(CurrentWeatherData.self, from: json)
//                DispatchQueue.main.async {
//                    MainViewModel.updateView
//                }
                completionHandler(data)
                return
            }
            
             catch {
                 print(error.localizedDescription)
            }
        }
        task.resume()
    }
}

