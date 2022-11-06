//
//  Contract.swift
//  Code Pirates Project
//
//  Created by Code Pirates Project on 2022-10-08.
//

import Foundation
class Contract : CustomStringConvertible{
    var description: String {return ""}
}

class Permanent : Contract {
    var nbChildren: Int
    var married: Bool
    var monthlySalary: Int
    var bonusPerChildPerMonth: Int
    var accumulatedDays: Int
    init(nbChildren: Int, married: Bool, monthlySalary: Int, bonusPerChildPerMonth: Int, accumulatedDays: Int) {
        self.nbChildren = nbChildren
        self.married = married
        self.monthlySalary = monthlySalary
        self.bonusPerChildPerMonth = bonusPerChildPerMonth
        self.accumulatedDays = accumulatedDays
    }
    
    func getFinalAmount() -> Int {
        var finalAmount  = 0
        if married == true{
            finalAmount = nbChildren * bonusPerChildPerMonth
            finalAmount = (finalAmount + monthlySalary)
            finalAmount = finalAmount * accumulatedDays
            finalAmount = finalAmount/20
            //print("====================\(finalAmount)==========================")
        }
        else{
            //let bonusPerChildPerMonth = 0
            //finalAmount = nbChildren * bonusPerChildPerMonth
            finalAmount = finalAmount + monthlySalary
            finalAmount = finalAmount * accumulatedDays
            finalAmount = finalAmount/20
           // print("====================\(finalAmount)==========================")
            //finalAmount = finalAmount
        }
        //print("He is married with 3 children")
        return  finalAmount
    }
}

class Temporary : Contract {
    var hourlySalary: Int
    var accumulatedHours: Int
    init(hourlySalary: Int, accumulatedHours: Int) {
        self.hourlySalary = hourlySalary
        self.accumulatedHours = accumulatedHours
    }
    func getFinalAmount() -> Int {
       let   finalAmount = hourlySalary * accumulatedHours
             //finalAmount = finalAmount
         //print("%%%%%%%%%%%%%%%%%%% \(finalAmount) %%%%%%%%%%%%%%%%%%%%" )
         //print("He is married with 3 children")
         return  finalAmount
    }
}
