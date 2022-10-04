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


var employees = [Employee]()
func hire_test1() {
    let m = Manager(name: "Serge", birthYear: 1985, nbClients: 30, nbTravelDays: 4)
    employees.append(Manager(name: "Serge", birthYear: 1985, nbClients: 30, nbTravelDays: 4))
    employees.append(Manager(name: "Cindy", birthYear: 1974, nbClients: 20, nbTravelDays: 6, rate: 80))
    employees.append(Programmer(name: "Paul", birthYear: 1993, nbProjects: 3, rate: 75))
    employees.append(Tester(name: "Pierre", birthYear: 1987, nbBugs: 124, rate: 50))
    employees.append(Programmer(name: "Matt", birthYear: 1981, nbProjects: 5, rate: 110))
    employees.append(Programmer(name: "Sarah", birthYear: 1986, nbProjects: 3))
    
    for item in employees {
        print("-------------------------")
        print(item)
        print("-------------------------")
    }
    
    
}

let m1 = Motorcycle(make: "Kawasaki", plate: "Custom Plate", color: "Yellow", category: "Race Motorcycle", sidecar: false)
let m2 = Motorcycle(make: "Honda", plate: "Custom Plate", color: "Black", category: "Not for Race", sidecar: true)
let vt1 = Car(make: "Lamborghini", plate: "Custom Plate", color: "White", category: "Family", gear: "Manual", type: "Sport")
let vt2 = Car(make: "BMW", plate: "Custom Plate", color: "Black", category: "Family", gear: "Automatic", type: "Sedan")
let vt3 = Car(make: "Renault Clio", plate: "Custom Plate", color: "Blue", category: "Family", gear: "Manual", type: "Hatchback")
let vt4 = Car(make: "Mazda", plate: "Custom Plate", color: "White", category: "Family", gear: "Automatic", type: "SUV")







