//
//  Car.swift
//  Code Pirates Project
//
//  Created by Code Pirates Project on 10/7/22.
//

import Foundation

class Car: Vehicle{
    var gear: String
    var type: String
    init(make: String, plate: String, color: String, category: String, gear: String, type: String) {
        self.gear = gear
        self.type = type
        super.init(make: make, plate: plate, color: color, category: category)
    }
    
    override func getDetails() -> String {
        var carDescription: String
        carDescription = "Employee has a car\n"
        carDescription +=  super.getDetails()
        carDescription += "\t - Gear Type: \(gear)\n"
        carDescription += "\t - Type: \(type)\n"
        
        return carDescription
    }

}
