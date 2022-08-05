//// This file was generated from JSON Schema using quicktype, do not modify it directly.
//// To parse the JSON, add this file to your project and do:
////
////   let response = try Response(json)
//
//import Foundation
//
//// MARK: - Response
//struct Response: Codable {
//    var cod: String?
//    var message, cnt: Int?
//    var list: [List]?
//    var city: City?
//}
//let url = "https://api.openweathermap.org/data/2.5/\(urlApi )?lat=\(latitude.description)&lon=\(longtitude.description)&appid={338dfea97b621c5baa686533dfaa58f8}"
//// MARK: Response convenience initializers and mutators
//
//extension Response {
//    init(data: Data) throws {
//        self = try newJSONDecoder().decode(Response.self, from: data)
//    }
//
//    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
//        guard let data = json.data(using: encoding) else {
//            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
//        }
//        try self.init(data: data)
//    }
//
//    init(fromURL url: URL) throws {
//        try self.init(data: try Data(contentsOf: url))
//    }
//
//    func with(
//        cod: String?? = nil,
//        message: Int?? = nil,
//        cnt: Int?? = nil,
//        list: [List]?? = nil,
//        city: City?? = nil
//    ) -> Response {
//        return Response(
//            cod: cod ?? self.cod,
//            message: message ?? self.message,
//            cnt: cnt ?? self.cnt,
//            list: list ?? self.list,
//            city: city ?? self.city
//        )
//    }
//
//    func jsonData() throws -> Data {
//        return try newJSONEncoder().encode(self)
//    }
//
//    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
//        return String(data: try self.jsonData(), encoding: encoding)
//    }
//}
//
//// MARK: - City
//struct City: Codable {
//    var id: Int?
//    var name: String?
//    var coord: Coord?
//    var country: String?
//    var population, timezone, sunrise, sunset: Int?
//}
//
//// MARK: City convenience initializers and mutators
//
//extension City {
//    init(data: Data) throws {
//        self = try newJSONDecoder().decode(City.self, from: data)
//    }
//
//    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
//        guard let data = json.data(using: encoding) else {
//            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
//        }
//        try self.init(data: data)
//    }
//
//    init(fromURL url: URL) throws {
//        try self.init(data: try Data(contentsOf: url))
//    }
//
//    func with(
//        id: Int?? = nil,
//        name: String?? = nil,
//        coord: Coord?? = nil,
//        country: String?? = nil,
//        population: Int?? = nil,
//        timezone: Int?? = nil,
//        sunrise: Int?? = nil,
//        sunset: Int?? = nil
//    ) -> City {
//        return City(
//            id: id ?? self.id,
//            name: name ?? self.name,
//            coord: coord ?? self.coord,
//            country: country ?? self.country,
//            population: population ?? self.population,
//            timezone: timezone ?? self.timezone,
//            sunrise: sunrise ?? self.sunrise,
//            sunset: sunset ?? self.sunset
//        )
//    }
//
//    func jsonData() throws -> Data {
//        return try newJSONEncoder().encode(self)
//    }
//
//    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
//        return String(data: try self.jsonData(), encoding: encoding)
//    }
//}
//
//// MARK: - Coord
//struct Coord: Codable {
//    var lat, lon: Double?
//}
//
//// MARK: Coord convenience initializers and mutators
//
//extension Coord {
//    init(data: Data) throws {
//        self = try newJSONDecoder().decode(Coord.self, from: data)
//    }
//
//    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
//        guard let data = json.data(using: encoding) else {
//            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
//        }
//        try self.init(data: data)
//    }
//
//    init(fromURL url: URL) throws {
//        try self.init(data: try Data(contentsOf: url))
//    }
//
//    func with(
//        lat: Double?? = nil,
//        lon: Double?? = nil
//    ) -> Coord {
//        return Coord(
//            lat: lat ?? self.lat,
//            lon: lon ?? self.lon
//        )
//    }
//
//    func jsonData() throws -> Data {
//        return try newJSONEncoder().encode(self)
//    }
//
//    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
//        return String(data: try self.jsonData(), encoding: encoding)
//    }
//}
//
//// MARK: - List
//struct List: Codable {
//    var dt: Int?
//    var main: MainClass?
//    var weather: [Weather]?
//    var clouds: Clouds?
//    var wind: Wind?
//    var visibility: Int?
//    var pop: Double?
//    var sys: Sys?
//    var dtTxt: String?
//    var rain: Rain?
//
//    enum CodingKeys: String, CodingKey {
//        case dt, main, weather, clouds, wind, visibility, pop, sys
//        case dtTxt = "dt_txt"
//        case rain
//    }
//}
//
//// MARK: List convenience initializers and mutators
//
//extension List {
//    init(data: Data) throws {
//        self = try newJSONDecoder().decode(List.self, from: data)
//    }
//
//    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
//        guard let data = json.data(using: encoding) else {
//            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
//        }
//        try self.init(data: data)
//    }
//
//    init(fromURL url: URL) throws {
//        try self.init(data: try Data(contentsOf: url))
//    }
//
//    func with(
//        dt: Int?? = nil,
//        main: MainClass?? = nil,
//        weather: [Weather]?? = nil,
//        clouds: Clouds?? = nil,
//        wind: Wind?? = nil,
//        visibility: Int?? = nil,
//        pop: Double?? = nil,
//        sys: Sys?? = nil,
//        dtTxt: String?? = nil,
//        rain: Rain?? = nil
//    ) -> List {
//        return List(
//            dt: dt ?? self.dt,
//            main: main ?? self.main,
//            weather: weather ?? self.weather,
//            clouds: clouds ?? self.clouds,
//            wind: wind ?? self.wind,
//            visibility: visibility ?? self.visibility,
//            pop: pop ?? self.pop,
//            sys: sys ?? self.sys,
//            dtTxt: dtTxt ?? self.dtTxt,
//            rain: rain ?? self.rain
//        )
//    }
//
//    func jsonData() throws -> Data {
//        return try newJSONEncoder().encode(self)
//    }
//
//    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
//        return String(data: try self.jsonData(), encoding: encoding)
//    }
//}
//
//// MARK: - Clouds
//struct Clouds: Codable {
//    var all: Int?
//}
//
//// MARK: Clouds convenience initializers and mutators
//
//extension Clouds {
//    init(data: Data) throws {
//        self = try newJSONDecoder().decode(Clouds.self, from: data)
//    }
//
//    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
//        guard let data = json.data(using: encoding) else {
//            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
//        }
//        try self.init(data: data)
//    }
//
//    init(fromURL url: URL) throws {
//        try self.init(data: try Data(contentsOf: url))
//    }
//
//    func with(
//        all: Int?? = nil
//    ) -> Clouds {
//        return Clouds(
//            all: all ?? self.all
//        )
//    }
//
//    func jsonData() throws -> Data {
//        return try newJSONEncoder().encode(self)
//    }
//
//    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
//        return String(data: try self.jsonData(), encoding: encoding)
//    }
//}
//
//// MARK: - MainClass
//struct MainClass: Codable {
//    var temp, feelsLike, tempMin, tempMax: Double?
//    var pressure, seaLevel, grndLevel, humidity: Int?
//    var tempKf: Double?
//
//    enum CodingKeys: String, CodingKey {
//        case temp
//        case feelsLike = "feels_like"
//        case tempMin = "temp_min"
//        case tempMax = "temp_max"
//        case pressure
//        case seaLevel = "sea_level"
//        case grndLevel = "grnd_level"
//        case humidity
//        case tempKf = "temp_kf"
//    }
//}
//
//// MARK: MainClass convenience initializers and mutators
//
//extension MainClass {
//    init(data: Data) throws {
//        self = try newJSONDecoder().decode(MainClass.self, from: data)
//    }
//
//    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
//        guard let data = json.data(using: encoding) else {
//            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
//        }
//        try self.init(data: data)
//    }
//
//    init(fromURL url: URL) throws {
//        try self.init(data: try Data(contentsOf: url))
//    }
//
//    func with(
//        temp: Double?? = nil,
//        feelsLike: Double?? = nil,
//        tempMin: Double?? = nil,
//        tempMax: Double?? = nil,
//        pressure: Int?? = nil,
//        seaLevel: Int?? = nil,
//        grndLevel: Int?? = nil,
//        humidity: Int?? = nil,
//        tempKf: Double?? = nil
//    ) -> MainClass {
//        return MainClass(
//            temp: temp ?? self.temp,
//            feelsLike: feelsLike ?? self.feelsLike,
//            tempMin: tempMin ?? self.tempMin,
//            tempMax: tempMax ?? self.tempMax,
//            pressure: pressure ?? self.pressure,
//            seaLevel: seaLevel ?? self.seaLevel,
//            grndLevel: grndLevel ?? self.grndLevel,
//            humidity: humidity ?? self.humidity,
//            tempKf: tempKf ?? self.tempKf
//        )
//    }
//
//    func jsonData() throws -> Data {
//        return try newJSONEncoder().encode(self)
//    }
//
//    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
//        return String(data: try self.jsonData(), encoding: encoding)
//    }
//}
//
//// MARK: - Rain
//struct Rain: Codable {
//    var the3H: Double?
//
//    enum CodingKeys: String, CodingKey {
//        case the3H = "3h"
//    }
//}
//
//// MARK: Rain convenience initializers and mutators
//
//extension Rain {
//    init(data: Data) throws {
//        self = try newJSONDecoder().decode(Rain.self, from: data)
//    }
//
//    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
//        guard let data = json.data(using: encoding) else {
//            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
//        }
//        try self.init(data: data)
//    }
//
//    init(fromURL url: URL) throws {
//        try self.init(data: try Data(contentsOf: url))
//    }
//
//    func with(
//        the3H: Double?? = nil
//    ) -> Rain {
//        return Rain(
//            the3H: the3H ?? self.the3H
//        )
//    }
//
//    func jsonData() throws -> Data {
//        return try newJSONEncoder().encode(self)
//    }
//
//    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
//        return String(data: try self.jsonData(), encoding: encoding)
//    }
//}
//
//// MARK: - Sys
//struct Sys: Codable {
//    var pod: Pod?
//}
//
//// MARK: Sys convenience initializers and mutators
//
//extension Sys {
//    init(data: Data) throws {
//        self = try newJSONDecoder().decode(Sys.self, from: data)
//    }
//
//    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
//        guard let data = json.data(using: encoding) else {
//            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
//        }
//        try self.init(data: data)
//    }
//
//    init(fromURL url: URL) throws {
//        try self.init(data: try Data(contentsOf: url))
//    }
//
//    func with(
//        pod: Pod?? = nil
//    ) -> Sys {
//        return Sys(
//            pod: pod ?? self.pod
//        )
//    }
//
//    func jsonData() throws -> Data {
//        return try newJSONEncoder().encode(self)
//    }
//
//    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
//        return String(data: try self.jsonData(), encoding: encoding)
//    }
//}
//
//enum Pod: String, Codable {
//    case d = "d"
//    case n = "n"
//}
//
//// MARK: - Weather
//struct WeatherNext: Codable {
//    var id: Int?
//    var main: MainEnum?
//    var weatherDescription: Description?
//    var icon: String?
//
//    enum CodingKeys: String, CodingKey {
//        case id, main
//        case weatherDescription = "description"
//        case icon
//    }
//}
//
//// MARK: Weather convenience initializers and mutators
//
//extension Weather {
//    init(data: Data) throws {
//        self = try newJSONDecoder().decode(Weather.self, from: data)
//    }
//
//    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
//        guard let data = json.data(using: encoding) else {
//            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
//        }
//        try self.init(data: data)
//    }
//
//    init(fromURL url: URL) throws {
//        try self.init(data: try Data(contentsOf: url))
//    }
//
//    func with(
//        id: Int?? = nil,
//        main: MainEnum?? = nil,
//        weatherDescription: Description?? = nil,
//        icon: String?? = nil
//    ) -> Weather {
//        return Weather(
//            id: id ?? self.id,
//            main: main ?? self.main,
//            description: weatherDescription ?? self.weatherDescription,
//            icon: icon ?? self.icon
//        )
//    }
//
//    func jsonData() throws -> Data {
//        return try newJSONEncoder().encode(self)
//    }
//
//    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
//        return String(data: try self.jsonData(), encoding: encoding)
//    }
//}
//
//enum MainEnum: String, Codable {
//    case clear = "Clear"
//    case clouds = "Clouds"
//    case rain = "Rain"
//}
//
//enum Description: String, Codable {
//    case brokenClouds = "broken clouds"
//    case clearSky = "clear sky"
//    case fewClouds = "few clouds"
//    case lightRain = "light rain"
//    case overcastClouds = "overcast clouds"
//    case scatteredClouds = "scattered clouds"
//}
//
//// MARK: - Wind
//struct Wind: Codable {
//    var speed: Double?
//    var deg: Int?
//    var gust: Double?
//}
//
//// MARK: Wind convenience initializers and mutators
//
//extension Wind {
//    init(data: Data) throws {
//        self = try newJSONDecoder().decode(Wind.self, from: data)
//    }
//
//    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
//        guard let data = json.data(using: encoding) else {
//            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
//        }
//        try self.init(data: data)
//    }
//
//    init(fromURL url: URL) throws {
//        try self.init(data: try Data(contentsOf: url))
//    }
//
//    func with(
//        speed: Double?? = nil,
//        deg: Int?? = nil,
//        gust: Double?? = nil
//    ) -> Wind {
//        return Wind(
//            speed: speed ?? self.speed,
//            deg: deg ?? self.deg,
//            gust: gust ?? self.gust
//        )
//    }
//
//    func jsonData() throws -> Data {
//        return try newJSONEncoder().encode(self)
//    }
//
//    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
//        return String(data: try self.jsonData(), encoding: encoding)
//    }
//}
//
//// MARK: - Helper functions for creating encoders and decoders
//
//func newJSONDecoder() -> JSONDecoder {
//    let decoder = JSONDecoder()
//    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
//        decoder.dateDecodingStrategy = .iso8601
//    }
//    return decoder
//}
//
//func newJSONEncoder() -> JSONEncoder {
//    let encoder = JSONEncoder()
//    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
//        encoder.dateEncodingStrategy = .iso8601
//    }
//    return encoder
//}
