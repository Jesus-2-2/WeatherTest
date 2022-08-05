import UIKit
import Combine
import CoreLocation
import Foundation

public class MainViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var weather = CurrentWeatherData(weather: [], main: Main(temp: 0.0, pressure: 0, humidity: 0), name: "", wind: WindFirst(speed: 0.0))
//    @Published var error: String? = nil
    @Published var getLocation: Location? = nil
    
    
 
    var cancellables: Set<AnyCancellable> = []
    
  

    func getWeather(_ latitude: Double, _ longitude: Double) {
                ApiManager.shared.getWeatherInfo(urlApi: "weather", latitude: latitude, longtitude: longitude) {
                    currentWeatherData in
                        //                if let error = error {
                        //                    DispatchQueue.main.async {
                        //                        self.error = error.localizedDescription
                        //                    }

                        //                    return
                        //                }

                        DispatchQueue.main.async {
                            self.weather = currentWeatherData
                        }

                }
            
        }
    
        
                    func loadWeather() {
        
                        ApiManager.shared.getWeatherInfo(urlApi: "weather", latitude: 0, longtitude: 0) { currentWeatherData in
//                            if let error = error {
//                                DispatchQueue.main.async {
//                                    self.error = error.localizedDescription
//                                }
//
//                                return
//                            }
        
                            DispatchQueue.main.async {
                                self.weather = currentWeatherData
                            }
        
        
                        }
        
                    }
        
        
        
        
        
        //extension MainViewModel : CLLocationManagerDelegate {
        //extension MainViewModel : CLLocationManagerDelegate {
        //    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //        if let lastLocation = locations.last {
        //            ApiManager.shared.getWeatherInfo(urlApi: "", latitude: lastLocation.coordinate.latitude, longtitude: lastLocation.coordinate.longitude)
        //                }
        //            }
        //
        //        }
        //    }
        //
        //}
        //
        
        
    }
    
