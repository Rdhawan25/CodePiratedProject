//
//  Motorcycle.swift
//  Code Pirates Project
//
//  Created by Code Pirates Project on 10/7/22.
//

import Foundation

class Motorcycle: Vehicle{
    var sidecar: Bool
    init(make: String, plate: String, color: String, category: String, sidecar: Bool) {
        self.sidecar = sidecar
        super.init(make: make, plate: plate, color: color, category: category)
    }
    
    override func getDetails() -> String {
        var motorDescription: String
        motorDescription = "Employee has a motorcycle\n"
        motorDescription += super.getDetails()
        if sidecar{
            motorDescription += "\t - With sidecar\n"
        }
        else{
            motorDescription += "\t - Without sidecar\n"
        }
        return motorDescription
        
    }

}
