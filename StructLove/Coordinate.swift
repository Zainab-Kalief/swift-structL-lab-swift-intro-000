//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Coordinate {
    var latitude: Double
    var longitude: Double
    var isInNorthernHemisphere: Bool {
        if self.latitude > 0 {
            return true
        } else {
            return false
        }
    }
    var isInSouthernHemisphere: Bool {
        if self.latitude < 0 {
            return true
        } else {
            return false
        }
    }
    var isInWesternHemisphere: Bool {
        if self.longitude > 0 {
            return true
        } else {
            return false
        }
    }
    var isInEasternHemisphere: Bool {
        if self.longitude < 0 {
            return true
        } else {
            return false
        }
    }
    
    func distance(to coordinate: Coordinate) -> Double {
        return acos(sin(self.latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude.radians-coordinate.longitude.radians)) * 6371000 / 1000
    }
    
}




// Any double type has now the radians computed property available to it thanks to this extension.

// For Example 
// let number = 5.0
// number.radians

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}
