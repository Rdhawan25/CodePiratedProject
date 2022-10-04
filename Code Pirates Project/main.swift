import Foundation

class Employee {
    var name: String! = nil
    var birthYear: UInt!
    var monthlySalary: UInt!
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
    
    //Computed Property
    var age: UInt {
        return UInt(Calendar.current.component(.year, from: Date()))-birthYear
    }
    
    //Initialization
    init(name: String!, birthYear: UInt!, monthlySalary: UInt!, rate: UInt!) {
        self.name = name
        self.birthYear = birthYear
        self.monthlySalary = monthlySalary
        self.rate = rate
        
    }
    
}
