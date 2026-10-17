// Exercise 05 - Enumerations

// An enum defines a fixed set of possible values, which stops an
// invalid value being used by mistake.

enum Direction {
    case north
    case south
    case east
    case west
}

var direction = Direction.north
print(direction)

// Once Swift knows the type, the shorter dot syntax can be used.
direction = .south
print(direction)

// Enum with switch

enum Status {
    case registered
    case pending
    case rejected
}

let studentStatus = Status.registered

switch studentStatus {

case .registered:
    print("Registration Complete")

case .pending:
    print("Registration Pending")

case .rejected:
    print("Registration Rejected")
}

// Every case is covered, so a default case is not required here.

// Raw values

enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

let grade = Grade.b
print(grade.rawValue)

// Activity 6

enum ModuleStatus: String {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
}

let moduleStatus = ModuleStatus.inProgress
print(moduleStatus.rawValue)

for status in [ModuleStatus.notStarted, .inProgress, .completed] {
    print(status.rawValue)
}
