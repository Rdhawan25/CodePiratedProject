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

class Manager: Employee{
    var nbTravelDays: UInt!
    var nbClients: UInt!
    init(name: String!, birthYear: UInt!, nbClients: UInt!, nbTravelDays: UInt?=0, rate: UInt?=100) {
        super.init(name: name, birthYear: birthYear, monthlySalary: 0, rate: rate)
        self.nbTravelDays = nbTravelDays
        self.nbClients = nbClients
        
        print("We have a new employee: \(name!), a manager")
        print(String(describing: self))
   }
    
    func bonus(a: Int, b: Int) -> Int {
            let GAIN_FACTOR_CLIENT = 500
            let GIAN_FACTOR_TRAVEL = 100
            return GAIN_FACTOR_CLIENT*a + GIAN_FACTOR_TRAVEL*b
        }

}

class Tester: Employee{
    var nbBugs: UInt!
    init(name: String!, birthYear: UInt!, nbBugs: UInt!, rate: UInt?=100) {
        super.init(name: name, birthYear: birthYear, monthlySalary: 0, rate: rate)
        self.nbBugs = nbBugs
        
        print("We have a new employee: \(name!), a tester")
        print(String(describing: self))
    }
    
}

class Programmer: Employee{
    var nbProjects: UInt!
    init(name: String!, birthYear: UInt!, nbProjects: UInt!, rate: UInt?=100) {
        super.init(name: name, birthYear: birthYear, monthlySalary: 0, rate: rate)
        self.nbProjects = nbProjects
        
        print("We have a new employee: \(name!), a programmer")
    }
}



