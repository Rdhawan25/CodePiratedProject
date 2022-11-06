//
//  Vehicle.swift
//  Code Pirates Project
//
//  Created by Code Pirates Project on 2022-10-05.
//

import Foundation

class Vehicle{
    var make: String
    var plate: String
    var color: String
    var category: String

    init(make: String, plate: String, color: String, category: String) {
        self.make = make
        self.plate = plate
        self.color = color
        self.category = category
    }
    
    func getDetails() -> String  {
        var vehicleDescription: String
        vehicleDescription = "\t - make: \(make)\n"
        vehicleDescription += "\t - plate: \(plate)\n"
        vehicleDescription += "\t - color: \(color)\n"
        vehicleDescription += "\t - category: \(category)\n"
        
        return vehicleDescription
    }

}
