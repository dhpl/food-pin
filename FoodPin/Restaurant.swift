//
//  Restaurant.swift
//  FoodPin
//
//  Created by Long on 8/8/17.
//  Copyright © 2017 Long. All rights reserved.
//

import Foundation

class Restaurant{
    
    var name = ""
    var location = ""
    var type = ""
    var image = ""
    var phone = ""
    var isVisited = false
    
    init(name: String, type: String, location: String, phone: String, image: String, isVisited: Bool){
        self.name = name
        self.location = location
        self.type = type
        self.image = image
        self.phone = phone
        self.isVisited = isVisited
    }
    
    
    
}
