//
//  PlaceTourist.swift
//  MyPlaces
//
//  Created by Albert Mata Guerra on 28/09/2018.
//  Copyright © 2018 Albert Mata Guerra. All rights reserved.
//

import Foundation

class PlaceTourist : Place {
    var discount_tourist = ""
    
    override init() {
        super.init()
        self.type = .touristic
    }
    
    init(name: String, description: String, discount_tourist: String, image_in: Data?) {
        super.init(type: .touristic, name: name, description: description, image_in:image_in)
        self.discount_tourist = discount_tourist
    }
    
}
