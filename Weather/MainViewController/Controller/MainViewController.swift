import UIKit
import Combine
import CoreLocation

class MainViewController: UIViewController,  CLLocationManagerDelegate {
    
    let viewModel = MainViewModel()
    let locationManager = CLLocationManager()

    
//    private var viewModel: MainViewModel = {
//        return self as! MainViewModel
//    }()
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet var cityLabel: UILabel!
    
    @IBOutlet weak var tempLabel: UILabel!
    
    @IBOutlet weak var conditionLabel: UILabel!
    
    @IBOutlet weak var humidityLabel: UILabel!
    
    @IBOutlet weak var pressureLabel: UILabel!
    
    @IBOutlet weak var windSpeedLabel: UILabel!
    
  
    func getWeather() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.viewModel.getWeather(Location.shared.latitude, Location.shared.longitude)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Location.shared.locationManagerStart()
        showImageBackground()
        getWeather()
        
    }
    
    //Функция забора данных
    private func setupObserving() {
        viewModel.$weather.sink{ [weak self] value in
//            guard let self = self else {return}
//                    guard let value = value else {return}
            self?.setupLabels(with: value)
        }.store(in: &viewModel.cancellables)
//
//        viewModel.$error.sink{ [weak self] value in
////            guard let self = self, let value = value else {return}
//            self?.showError(with: value)
//        }.store(in: &viewModel.cancellables)
        
        
        
    }
    
    private func setupLabels(with weather: CurrentWeatherData) {
        tempLabel.text = (String(weather.main.temp.description)) + "°C"
        cityLabel.text = "\(weather.name)"
        pressureLabel.text = (String(weather.main.pressure)) + "hPa"
        humidityLabel.text = (String(weather.main.humidity)) + " %"
////        conditionLabel.text = DataSource.weatherIDs[weather.weather[0].id]
//        iconImageView.image = UIImage(named: weather.weather[0].icon)
        windSpeedLabel.text = (String(weather.wind.speed)) + "m/s"
    }
    
    private func showError(with text: String) {
        
    }
    private func showImageBackground() {
        let backgroundImage = UIImageView(frame:  UIScreen.main.bounds)
        backgroundImage.image = UIImage(named:  "backgroundImageView")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
}
