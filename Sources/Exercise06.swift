// Exercise 06 - Structures, Classes, Value Types and Reference Types

// A struct groups related values together into a new type.

struct BasicStudent {
    var name: String
    var mark: Int
    var registered: Bool = true
}

let basicStudent = BasicStudent(name: "Amal", mark: 72)

print(basicStudent.name)
print(basicStudent.mark)
print(basicStudent.registered)

// Swift created the memberwise initializer for this struct
// automatically, and registered used its default value.

// Computed properties
// A stored property holds a value. A computed property works its value
// out each time it is accessed.

struct Rectangle {

    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 4, height: 3)
print(rectangle.area)

// area is never stored. It is calculated from width and height. This
// matters in SwiftUI, because the body of a view is a computed property
// as well.

enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

// A struct with a computed grade and a method.
// A function written inside a struct is called a method.

struct Student {

    var name: String
    var mark: Int

    var grade: Grade {

        switch mark {

        case 75...100:
            return .a

        case 65..<75:
            return .b

        case 50..<65:
            return .c

        default:
            return .f
        }
    }

    func displayDetails() {
        print("\(name) received \(mark) and the grade \(grade.rawValue)")
    }
}

let student = Student(name: "Amal", mark: 72)

print(student.name)
print(student.grade.rawValue)
student.displayDetails()

let secondStudent = Student(name: "Kamal", mark: 75)
secondStudent.displayDetails()

// mutating methods
// A struct method that changes a property of the struct itself must be
// marked mutating.

struct Counter {

    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()

counter.increment()
counter.increment()

print(counter.count)

// Classes
// A class can hold properties and methods too, but it defines its own
// initializer instead of receiving a memberwise one.

class Lecturer {

    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce()

// Struct vs class - the important difference
// A struct is a value type and a class is a reference type.

struct Point {
    var x = 0
}

var firstPoint = Point()
var secondPoint = firstPoint

secondPoint.x = 99

print(firstPoint.x)
print(secondPoint.x)

// The output is 0 and 99. Assigning a struct makes a copy, so the two
// values are completely independent of each other.

class CounterClass {
    var count = 0
}

let firstCounter = CounterClass()
let secondCounter = firstCounter

secondCounter.count = 99

print(firstCounter.count)
print(secondCounter.count)

// The output is 99 and 99. Both constants refer to the same object, so
// a change made through one reference is visible through the other.

// Choosing between a struct and a class
//
// struct - simple data, and whenever independent copies are wanted.
// class  - a shared instance, or when inheritance is needed.
// If it is not clear which one to use, a struct is the safer choice.

// Knowledge Check
//
// 1. Functions avoid repeated code and give reusable work a name.
// 2. A parameter is a value passed into a function when it is called.
// 3. -> String means the function returns a String.
// 4. An argument label is the external name used at the call site.
// 5. A default parameter value is used when no argument is supplied.
// 6. guard exits the function early when a condition is not satisfied.
// 7. A tuple groups several values so they can be returned together.
// 8. filter keeps only the elements that satisfy a condition.
// 9. map transforms every element and returns a new collection.
// 10. reduce combines all the elements into one value.
// 11. An enum limits a value to a fixed set of valid choices.
// 12. A raw value is an underlying value stored for each enum case.
// 13. A struct is a value type that groups related data into a new type.
// 14. A stored property holds a value directly.
// 15. A computed property calculates its value when it is accessed.
// 16. mutating is required when a struct method changes a property of
//     the struct itself.
// 17. A class is a reference type that can hold properties and methods.
// 18. A struct is copied on assignment, while a class is shared by
//     reference, so copies of a class point at the same object.
