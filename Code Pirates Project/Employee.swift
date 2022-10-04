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
    var rate: UInt! = 100
    var age: UInt {
        return UInt(Calendar.current.component(.year, from: Date()))-birthYear
    }
    init(name: String!, birthYear: UInt!, monthlySalary: UInt!, rate: UInt!, employeeVehicle: Vehicle?) {
        self.name = name
        self.birthYear = birthYear
        self.monthlySalary = monthlySalary
        self.rate = rate
        self.employeeVehicle = employeeVehicle
        
        if rate>100{
            self.rate = 100
        }
        if rate<10{
            self.rate = 10
        }
    }
    func getEmployeeDetails(){
      //blank function to override
    }
    
    func accumulatedSalary(){
        //blank
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
   }
    
    func bonus(a: UInt, b: UInt) -> Float {
                let GAIN_FACTOR_CLIENT = 500
                let GIAN_FACTOR_TRAVEL = 100
        return Float(UInt(GAIN_FACTOR_CLIENT)*a + UInt(GIAN_FACTOR_TRAVEL)*b)
            }
    
//    override func accumulatedSalary() {
//        <#code#>
//    }

    
    override func getEmployeeDetails() {
        print("Name: \(name!), a manager")
        print("Age: \(age)")
        self.employeeVehicle?.getDetails()
        print("\(name!) has an Occupation rate: \(rate!)% He/She travelled \(nbTravelDays!) days and has brought \(nbClients!) new clients.")
        print("His/Her estimated annual income is \(bonus(a: nbClients, b: nbTravelDays))")
    }
}

class Tester: Employee{
    var nbBugs: UInt!
    init(name: String!, birthYear: UInt!, nbBugs: UInt!, rate: UInt?=100, employeeVehicle: Vehicle?=nil) {
        super.init(name: name, birthYear: birthYear, monthlySalary: 0, rate: rate, employeeVehicle: employeeVehicle)
        self.nbBugs = nbBugs
        
        print("We have a new employee: \(name!), a tester")
    }
    
    func bonus(a: Int)-> Float{
        let GAIN_FACTOR_ERROR = 10
        return Float((GAIN_FACTOR_ERROR * a))
           }
  
    override func getEmployeeDetails() {
        print("Name: \(name!), a tester")
        print("Age: \(age)")
        self.employeeVehicle?.getDetails()
        print("\(name!) has an Occupation rate: \(rate!)% and corrected \(nbBugs!) bugs")
        print("His/Her estimated annual income is \(bonus(a: Int(nbBugs!)))")
    }
    
    
    
}


class Programmer: Employee{
    var nbProjects: UInt!
    init(name: String!, birthYear: UInt!, nbProjects: UInt!, rate: UInt?=100, employeeVehicle: Vehicle?=nil) {
        super.init(name: name, birthYear: birthYear, monthlySalary: 0, rate: rate, employeeVehicle: employeeVehicle)
        self.nbProjects = nbProjects
        
        print("We have a new employee: \(name!), a programmer")
    }
    
    
    override func getEmployeeDetails() {
        print("Name: \(name!), a programmer")
        print("Age: \(age)")
        self.employeeVehicle?.getDetails()
        print("\(name!) has an Occupation rate: \(rate!)% and completed \(nbProjects!) projects")
        print("His/Her estimated annual income is ")
    }
}
