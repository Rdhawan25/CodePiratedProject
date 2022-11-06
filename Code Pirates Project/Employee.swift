//
//  Employee.swift
//  Code Pirates Project
//
//  Created by Code Pirates Project on 2022-10-05.
//

import Foundation

class Employee {
    var name: String
    var birthYear: Int
    var monthlySalary: Int
    var employeeVehicle : Vehicle?
    var _rate: Int? = 100 // default value 100
    var rate: Int?{
        get{
            return _rate
        }
        set(newVal){
            if newVal! < 10{
                _rate = 10
            }else if newVal! > 100{
                _rate = 100
            }else{
                _rate = newVal!
            }
        }
    }
    var age: Int {
        return Calendar.current.component(.year, from: Date())-birthYear
    }
    var income : Float = 0.0
    
    //Contract Info
    var numberOfChildren: Int  = 0
    var contract : Contract?
    
    init(name: String, birthYear: Int, monthlySalary: Int, rate: Int, employeeVehicle: Vehicle?) {
        
        self.name = name
        self.birthYear = birthYear
        self.monthlySalary = monthlySalary
        self.rate = rate
        self.employeeVehicle = employeeVehicle
       // self.employeeContract = employeeContract
      
    }
    
    func annualIncome()-> Float{
        let yearlyIncome = 12 * (monthlySalary * rate!)
        return Float(yearlyIncome)
    }
     
    func accumulatedSalary(){
        //blank
    }
   
    func  signContract(contract: Contract){
        self.contract = contract
    }
    
    func contractInfo() -> String {
        if let c = contract as? Permanent {
            return ("\(name) is a employee. he is married and he/she has \(c.nbChildren) children.He/She has worked for  \(c.accumulatedDays) days and upon contract his/her monthly salary is \(c.monthlySalary)")
        }
        if let c = contract as? Temporary {
            return ("\(name) is a employee. he is a temporary employee with \(c.hourlySalary) hourly salary and he has worked for \(c.accumulatedHours) hours")
        }
        return ""
    }
}
