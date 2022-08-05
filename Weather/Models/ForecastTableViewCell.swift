//
//  TableViewCell.swift
//  Weather
//
//  Created by Ilya on 3.08.22.
//

import Foundation
import UIKit

class ForecastTableViewCell: UITableViewCell {
    
    static let id = "ForecastCell"
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var conditionLabel: UILabel!
    
    @IBOutlet weak var tempLabel: UILabel!
    

    
    
}

