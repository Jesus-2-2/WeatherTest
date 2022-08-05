//
//  ForecastView.swift
//  Weather
//
//  Created by Ilya on 3.08.22.
//

import Foundation
import Combine
import UIKit


class TableViewClass : UITableView, ObservableObject {
    
    
    
    //Переменные
    
    let tableView = UITableView()
//    let tableView = UITableView.init(frame: .zero, style: UITableView.Style.plain)
    
    //Функции
    
    func tableViewCreate() {
    
        tableView.frame = CGRect(x: 10, y: 200, width: 390, height: 600)
    }
    
    //Функция обновления слоя
    public func updateLayout(with size: CGSize) {
        //(self)
        self.tableView.frame = CGRect.init(origin: .zero, size: size)
    }
    //Функция регистрации ячейки
    func registerCell() {
        self.tableView.register(ForecastTableViewCell.self, forCellReuseIdentifier: "ForecastCell")
    }
    //Функция ДатаСорс
    func tableViewDataSource() {
        self.tableView.dataSource = self
    }
}


//Расширение для ячейки
extension TableViewClass : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

extension TableViewClass: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: ForecastTableViewCell.id, for: indexPath) as! ForecastTableViewCell
        cell.textLabel?.text = "test"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
        case self.tableView:
            return 39
        default:
            return 0
        }
        
    }
    
    
}





