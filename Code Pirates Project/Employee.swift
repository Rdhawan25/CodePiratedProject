//
//  Employee.swift
//  Code Pirates Project
//
//  Created by Raghav Dhawan on 2022-10-05.
//

import Foundation

class Employee {
    var name: String! = nil
    var birthYear: UInt!
    var monthlySalary: UInt!
    var employeeVehicle : Vehicle?
    var rate: UInt! = 100{
        didSet(newValue){
            if newValue>100{
                rate = 100
            }
            if newValue<10{
                rate = 10
            }
        }
    }
    var age: UInt {
        return UInt(Calendar.current.component(.year, from: Date()))-birthYear
    }
    init(name: String!, birthYear: UInt!, monthlySalary: UInt!, rate: UInt!, employeeVehicle: Vehicle?) {
        self.name = name
        self.birthYear = birthYear
        self.monthlySalary = monthlySalary
        self.rate = rate
        self.employeeVehicle = employeeVehicle
        
    }
}


class Manager: Employee{
    var nbTravelDays: UInt!
    var nbClients: UInt!
    init(name: String!, birthYear: UInt!, nbClients: UInt!, nbTravelDays: UInt?=0, rate: UInt?=100, employeeVehicle: Vehicle?=nil) {
        super.init(name: name, birthYear: birthYear, monthlySalary: 0, rate: rate, employeeVehicle: employeeVehicle)
        self.nbTravelDays = nbTravelDays
        self.nbClients = nbClients
        
        print("We have a new employee: \(name!), a manager")
        print(String(describing: self))
   }
    
}


class Programmer: Employee{
    var nbProjects: UInt!
    init(name: String!, birthYear: UInt!, nbProjects: UInt!, rate: UInt?=100, employeeVehicle: Vehicle?=nil) {
        super.init(name: name, birthYear: birthYear, monthlySalary: 0, rate: rate, employeeVehicle: employeeVehicle)
        self.nbProjects = nbProjects
        
        print("We have a new employee: \(name!), a programmer")
    }
    
}


class Tester: Employee{
    var nbBugs: UInt!
    init(name: String!, birthYear: UInt!, nbBugs: UInt!, rate: UInt?=100, employeeVehicle: Vehicle?=nil) {
        super.init(name: name, birthYear: birthYear, monthlySalary: 0, rate: rate, employeeVehicle: employeeVehicle)
        self.nbBugs = nbBugs
        
        print("We have a new employee: \(name!), a tester")
        print(String(describing: self))
    }

    
}

