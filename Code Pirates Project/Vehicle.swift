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

}

class Car: Vehicle{
    var gear: String!
    var type: String!
    init(make: String!, plate: String!, color: String!, category: String!, gear: String!, type: String!) {
        super.init(make: make, plate: plate, color: color, category: category)
        self.gear = gear
        self.type = type
    }
}

class Motorcycle: Vehicle{
    var sidecar: Bool!
    init(make: String!, plate: String!, color: String!, category: String!, sidecar: Bool!) {
        super.init(make: make, plate: plate, color: color, category: category)
        self.sidecar = sidecar
    }
    

}


