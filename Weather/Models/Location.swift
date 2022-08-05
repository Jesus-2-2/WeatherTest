//
//  Location.swift
//  Weather
//
//  Created by Ilya on 1.08.22.
//

import Foundation
import CoreLocation
import UIKit

class Location : NSObject, CLLocationManagerDelegate, ObservableObject {
    
    
    
    let locationManager = CLLocationManager()
    var latitude = 0.0
    var longitude = 0.0
    
    static let shared = Location()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
          guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
          latitude = locValue.latitude
          longitude = locValue.longitude
      }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
    
    func locationManagerStart() {
        
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
//            locationManager.pausesLocationUpdatesAutomatically = false
//            locationManager.startUpdatingLocation()
            locationManager.requestLocation()
        }
    }
}

//            ApiManager.shared.getWeatherInfo(urlApi: "", latitude: lastLocation.coordinate.latitude, longtitude: lastLocation.coordinate.longitude, completionHandler: (CurrentWeatherData?, Error?) -> ())
//            else {
//                return
//                }
//            }
            //            //ОСТАНОВИЛСЯ ТУТ НАДО СДЕЛАТЬ ЭТУ ФУНКЦИЮ ВО ВЬЮ КОНТРОЛЛЕРЕ
        

