//
//  ModelUser.swift
//  test3
//
//  Created by Anastasiia on 06.05.22.
//  Copyright © 2022 Nastia Dovhun. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class ModelUser {
    var users = [[User]]()
    init() {
        setup()
    }
    
    func setup(){
        let man1 = User(name: "Андрей", city: "Житомир", image: UIImage(named: "man1")!, gender: .male, coordinate: CLLocationCoordinate2D(latitude: 50.260128, longitude: 28.663033))
        let man2 = User(name: "Игорь", city: "Винница", image: UIImage(named: "man2")!, gender: .male, coordinate: CLLocationCoordinate2D(latitude: 49.229542, longitude: 28.441485))
        let man3 = User(name: "Сергей", city: "Харьков", image: UIImage(named: "man3")!, gender: .male, coordinate: CLLocationCoordinate2D(latitude: 49.970050, longitude: 36.301202))
        
        let manArrey = [man1, man2, man3]
        
        let woman1 = User(name: "Анна", city: "Одесса", image: UIImage(named: "women1")!, gender: .female, coordinate: CLLocationCoordinate2D(latitude: 46.484583, longitude: 30.732600))
        let woman2 = User(name: "Виктория", city: "Хмельницкий", image: UIImage(named: "women2")!, gender: .female, coordinate: CLLocationCoordinate2D(latitude: 49.418480, longitude: 26.976089))
        let woman3 = User(name: "Катя", city: "Днипро", image: UIImage(named: "women3")!, gender: .female, coordinate: CLLocationCoordinate2D(latitude: 48.452524, longitude: 35.005578))
        
        let womanArrey = [woman1, woman2, woman3]
        
        users.append(manArrey)
        users.append(womanArrey)
        
    }
}

