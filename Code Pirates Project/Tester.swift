//
//  Tester.swift
//  Code Pirates Project
//
//  Created by Code Pirates Project on 10/7/22.
//

import Foundation

class Tester: Employee, CustomStringConvertible{
    private let GAIN_FACTOR_ERROR = 10
    var _nbBugs: Int = 0
    var nbBugs: Int{
        get{
            return _nbBugs
        }
        set(newVal){
            if newVal > 0{
                _nbBugs = newVal
            }
            else{
                print("error must be greater than 0")
            }
            
        }
    }
    init(name: String, birthYear: Int, nbBugs: Int, rate: Int?=100, employeeVehicle: Vehicle?=nil) {
        super.init(name: name, birthYear: birthYear, monthlySalary: 0, rate: rate!, employeeVehicle: employeeVehicle)
        self.nbBugs = nbBugs
        income = annualIncome()
        print("We have a new employee: \(name), a tester")
    }
    
    var description: String {
        var statement: String
        statement = "Name: \(name), a tester\n"
        statement += "Age: \(age) \n"
        if let testerVehicle = employeeVehicle{
            statement += testerVehicle.getDetails()
        }
        statement += "\(name) has an Occupation rate: \(rate!)% and corrected \(nbBugs) bugs.\n"
        statement += "His/Her estimated annual income is \(income)"
        
        return  statement
        
    }
    
    override func annualIncome()-> Float{
        let yearlyIncome = super.annualIncome()
        let  bonus = Float(GAIN_FACTOR_ERROR * nbBugs)
        let annualIncome = yearlyIncome + bonus
        return Float(annualIncome)
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
        
        let  bonus  = Float(GAIN_FACTOR_ERROR * nbBugs)
        var b = amount * Int(rate!)/100
        b = b * 12
        b = b + Int(bonus)
        income = Float(b)
        
    }
    
    override func contractInfo() -> String {
        if let c = contract as? Permanent {
            return ("\(name) is a Tester. he is married and he/she has \(c.nbChildren) children.He/She has worked for  \(c.accumulatedDays) days and upon contract his/her monthly salary is \(c.monthlySalary)")
        }
        if let c = contract as? Temporary {
            return ("\(name) is a Tester. he is a temporary employee with \(c.hourlySalary) hourly salary and he has worked for \(c.accumulatedHours) hours")
        }
        return ""
    }

}
