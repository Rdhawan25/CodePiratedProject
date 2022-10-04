//
//  Vehicle.swift
//  Code Pirates Project
//
//  Created by Raghav Dhawan on 2022-10-05.
//

import Foundation

class Vehicle{
    var make: String!
    var plate: String!
    var color: String!
    var category: String!

    init(make: String!, plate: String!, color: String!, category: String!) {
        self.make = make
        self.plate = plate
        self.color = color
        self.category = category
    }
    
    func getDetails(){
        print("\t - Make: \(self.make!)")
        print("\t - Plate: \(self.plate!)")
        print("\t - Color: \(self.color!)")
        print("\t - Category: \(self.category!)")
    }

}

class Car: Vehicle{
    var gear: String!
    var type: String!
    init(make: String!, plate: String!, color: String!, category: String!, gear: String!, type: String!) {
        super.init(make: make, plate: plate, color: color, category: category)
        self.gear = gear
        self.type = type
    }
    
    override func getDetails() {
        print("Employee has a Car")
        super.getDetails()
        print("\t - Gear Type: \(self.gear!)")
        print("\t - Type: \(self.type!)")
    }

}

class Motorcycle: Vehicle{
    var sidecar: Bool!
    init(make: String!, plate: String!, color: String!, category: String!, sidecar: Bool!) {
        super.init(make: make, plate: plate, color: color, category: category)
        self.sidecar = sidecar
    }
    
    override func getDetails() {
        print("Employee has a Motorcycle")
        super.getDetails()
        if sidecar{
            print("\t - With Sidecar")
        }
        else{
            print("\t - Without SideCar")
        }
        
    }

}
