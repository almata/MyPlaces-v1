//
//  PlaceManager.swift
//  MyPlaces
//
//  Created by Albert Mata Guerra on 28/09/2018.
//  Copyright © 2018 Albert Mata Guerra. All rights reserved.
//

import Foundation

class PlaceManager {
    
    // MARK: - Singleton
    
    private static var sharedPlaceManager: PlaceManager = {
        var singletonManager: PlaceManager
        singletonManager = PlaceManager()
        return singletonManager
    }()
    
    class func shared() -> PlaceManager {
        return sharedPlaceManager
    }
    
    // MARK: - Class implementation
    
    var places = [Place]()
    
    func append(_ value: Place) {
        places.append(value)
    }

    func count() -> Int {
        return places.count
    }
    
    func itemAt(position: Int) -> Place {
        return places[position]
    }
    
    func itemWithId(_ id: String) -> Place {
        return places.filter {$0.id == id}.first!
    }
    
    func remove(_ value: Place) {
        places = places.filter {$0.id != value.id}
    }
}
