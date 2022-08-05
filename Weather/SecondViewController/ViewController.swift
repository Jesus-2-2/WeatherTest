//
//  ViewController.swift
//  Weather
//
//  Created by Ilya on 28.07.22.
//

import UIKit
import CoreLocation

class ViewController: Location {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationAccesStart()
        WeatherInfo(latitude: lastLocation.coordinate.latitude, longtitude: lastLocation.coordinate.longitude)
    }


}


