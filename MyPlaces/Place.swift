//
//  Place.swift
//  MyPlaces
//
//  Created by Albert Mata Guerra on 28/09/2018.
//  Copyright © 2018 Albert Mata Guerra. All rights reserved.
//

import MapKit

enum PlaceType {
    case generic
    case touristic
}

class Place {
    var id = ""
    var type = PlaceType.generic
    var name = ""
    var description = ""
    var location: CLLocationCoordinate2D!
    var image: Data?
    
    init() {
        self.id = UUID().uuidString
    }
    
    init(name: String, description: String, image_in: Data?) {
        self.id = UUID().uuidString
        self.name = name
        self.description = description
        self.image = image_in
    }
    
    init(type: PlaceType, name: String, description: String, image_in: Data?) {
        self.id = UUID().uuidString
        self.type = type
        self.name = name
        self.description = description
        self.image = image_in
    }
}
