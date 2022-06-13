//
//  User.swift
//  test3
//
//  Created by Anastasiia on 06.05.22.
//  Copyright © 2022 Nastia Dovhun. All rights reserved.
//

import Foundation
import UIKit
import MapKit

enum Gender{
    case male
    case female
}

class User: NSObject,MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var name:String
    var city:String
    var image:UIImage
    var gender:Gender
    var title: String?{
        return name
    }
    init(name:String,city:String,image:UIImage,gender:Gender,coordinate:CLLocationCoordinate2D ) {
        self.name = name
        self.city = city
        self.image = image
        self.gender = gender
        self.coordinate = coordinate
    }
}
