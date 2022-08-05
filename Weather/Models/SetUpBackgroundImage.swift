//
//  SetUpBackgroundImage.swift
//  Weather
//
//  Created by Ilya on 5.08.22.
//

import Foundation
import UIKit


class ImageBackground : NSObject, ObservableObject {
    
    
    
    static let share = ImageBackground()
    
        
    
    func assignBackgroundImage(view: UIView)
        {
    let background = UIImage(named: "backgroundImageView")
    var imageView : UIImageView!
    imageView.contentMode = UIView.ContentMode.scaleAspectFill
    imageView.clipsToBounds = true
    imageView.image = background
    imageView.center = view.center
    view.addSubview(imageView)
    view.insertSubview(imageView, at: 0)
    
    
}
}

