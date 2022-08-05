////
////  SecondViewController.swift
////  Weather
////
////  Created by Ilya on 3.08.22.
////
//
//import Foundation
//import UIKit
//import Combine
//
////protocol SecondViewControllerInterface: AnyObject {
////
////}
//
//class SecondViewController : UITableViewController {
//  
//        
//        
//        @IBOutlet var secondTabelView: UITableView!
//        var nextWeather: [NextWeatherData] = []
//
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            
//            for i in 0..<list[List.dtTxt].count {
//                
//                let days = list[List.dtTXT]
//                //Иконка погоды, время, градусы, состояние погоды
//                    nextWeather.append(person)
//            }
//        }
//
//        // MARK: - Table view data source
//
//        override func numberOfSections(in tableView: UITableView) -> Int {
//            //Дни погоды (пн вт ср чт пт)
//            return list[List.dtTXT]
//        }
//        
//        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//            return persons[section].name
//        }
//
//        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return 8
//        }
//
//        
//        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "CellForecast", for: indexPath)
//            
//            if indexPath.row == 0{
//                cell.textLabel?.text = ввод текста
//            }else{
//                cell.textLabel?.text = ввод текста
//            }
//            
//            return cell
//        }
//    
//}
//
