//
//  Data.swift
//  Weather
//
//  Created by Ilya on 1.08.22.
//

import Foundation

//Структура текущей погоды
struct CurrentWeatherData: Codable {
    var weather: [Weather] 
    var main: Main
    var name: String
    var wind: WindFirst
}

//Cтруктура на 5 дней вперед
struct NextWeatherData : Codable {
    var weather: [Weather] = []
    var temp: Double = 0.0
    var city: String = ""
}

//Вложенные структуры
struct Weather: Codable {
    var id: Int
    var main: String
    var description: String
    var icon: String
    
}

struct Main: Codable {
    var temp: Double = 0.0
    var pressure: Int = 0
    var humidity: Int = 0
}

struct WindFirst: Codable {
    var speed: Double
}
