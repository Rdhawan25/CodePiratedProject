//
//  Programmer.swift
//  Code Pirates Project
//
//  Created by Code Pirates Project on 10/7/22.
//

import Foundation

class Programmer: Employee , CustomStringConvertible {
   private let GAIN_FACTOR_PROJECTS = 200
    var _nbProjects: Int = 0
    var nbProjects: Int{
        get{
            return _nbProjects
        }
        set(newVal){
            if newVal > 0{
                _nbProjects = newVal
            }
            else{
                print("error must be greater than 0")
            }
            
        }
    }
    init(name: String, birthYear: Int, nbProjects: Int, rate: Int?=100, employeeVehicle: Vehicle? = nil) {
        super.init(name: name, birthYear: birthYear, monthlySalary: 0, rate: rate!, employeeVehicle: employeeVehicle)
        self.nbProjects = nbProjects
        income = annualIncome()

        print("We have a new employee: \(name), a programmer")
    }
    
    var description: String {
        
        var statement: String
        statement = "Name: \(name), a Programmer\n"
        statement += "Age: \(age) \n"
        if let programmerVehicle = employeeVehicle{
            statement += programmerVehicle.getDetails()
        }
        statement += "\(name) has an Occupation rate: \(rate!)% and completed \(nbProjects) projects\n"
        statement += "His/Her estimated annual income is \(income)"
        
        return  statement
        
    }
    
    override func annualIncome()-> Float{
        let yearlyIncome = super.annualIncome()
        let  bonus = Float (GAIN_FACTOR_PROJECTS * nbProjects)
        let annualIncome = yearlyIncome + bonus
        return Float(annualIncome)
    }
    
    func signContract(contract : Int )-> Float{
        let  bonus  = Float (GAIN_FACTOR_PROJECTS * nbProjects)
        var b = contract * Int(rate!)/100
        b = b * 12
        b = b + Int(bonus)
        var statement: String
        statement = "Name: \(name), a manager\n"
        statement += "Age: \(age) \n"
        if let managerVehicle = employeeVehicle{
            statement += managerVehicle.getDetails()
        }
        statement += "\(name) has an Occupation rate: \(rate!)% and completed \(nbProjects) projects\n"
        statement += "His/Her estimated annual income is \(b)"
//        print(statement)
        //print ("!!!!!!!!!!!!!!!!!!!!!!!!!!!!\(b)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
        let final = Float(b)
        income = final
        return final
        
        
    }
    
    override func signContract(contract: Contract) {
        super.signContract(contract: contract)
        var amount = 0
        if let c = contract as? Permanent {
            amount = c.getFinalAmount()

        }
        if let c = contract as? Temporary {
            amount = c.getFinalAmount()
        }
        
        let  bonus  = Float (GAIN_FACTOR_PROJECTS * nbProjects)
        var b = amount * Int(rate!)/100
        b = b * 12
        b = b + Int(bonus)
        income = Float(b)
        
    }
    
    
    override func contractInfo() -> String {
        if let c = contract as? Permanent {
            return ("\(name) is a programmer. he is married and he/she has \(c.nbChildren) children.He/She has worked for  \(c.accumulatedDays) days and upon contract his/her monthly salary is \(c.monthlySalary)")
        }
        if let c = contract as? Temporary {
            return ("\(name) is a programmer. he is a temporary employee with \(c.hourlySalary) hourly salary and he has worked for \(c.accumulatedHours) hours")
        }
        return ""
    }

}
