// Final Practical Task - Student Management System

// Part A - Create a Grade enum

enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case bPlus = "B+"
    case b = "B"
    case bMinus = "B-"
    case cPlus = "C+"
    case c = "C"
    case cMinus = "C-"
    case f = "F"
}

// Part B - Create a Student struct
// Part C - Add a computed grade property
// Part D - Add a method

struct Student {

    let studentID: String
    let name: String
    let mark: Int

    var grade: Grade {

        switch mark {

        case 80...100:
            return .a

        case 75..<80:
            return .aMinus

        case 70..<75:
            return .bPlus

        case 65..<70:
            return .b

        case 60..<65:
            return .bMinus

        case 55..<60:
            return .cPlus

        case 45..<55:
            return .c

        case 40..<45:
            return .cMinus

        default:
            return .f
        }
    }

    func displayDetails() {
        print("ID: \(studentID)")
        print("Name: \(name)")
        print("Mark: \(mark)")
        print("Grade: \(grade.rawValue)")
        print("--------------------------------")
    }
}

// Part E - Create students

let students = [
    Student(studentID: "IT001", name: "Amal", mark: 72),
    Student(studentID: "IT002", name: "Nimali", mark: 45),
    Student(studentID: "IT003", name: "Ruwan", mark: 68),
    Student(studentID: "IT004", name: "Sanduni", mark: 90),
    Student(studentID: "IT005", name: "Kasun", mark: 38)
]

print("================================")
print("   STUDENT MANAGEMENT SYSTEM")
print("================================")

// Part F - Display students

for student in students {
    student.displayDetails()
}

// Part G - Use filter
// The pass filter uses mark >= 50, which is a separate rule from the
// grade bands above. Nimali is awarded a C with 45 marks but is still
// left out here, because 45 is below the pass mark.

let passedStudents = students.filter { $0.mark >= 50 }

print("Passed Students:")

for student in passedStudents {
    print(student.name)
}

print("--------------------------------")

// Part H - Use map

let studentNames = students.map { $0.name }
print("Student Names: \(studentNames)")

print("--------------------------------")

// Part I - Use reduce

let totalMarks = students.reduce(0) { $0 + $1.mark }
let classAverage = Double(totalMarks) / Double(students.count)

print("Total Marks: \(totalMarks)")
print("Class Average: \(classAverage)")

print("================================")

// Additional Challenge
// Validating optional student details with guard let.

func addStudent(name: String?, mark: Int?) {

    guard let name = name else {
        print("Student name unavailable")
        return
    }

    guard !name.isEmpty else {
        print("Student name cannot be empty")
        return
    }

    guard let mark = mark else {
        print("Student mark unavailable")
        return
    }

    guard mark >= 0 && mark <= 100 else {
        print("Mark must be between 0 and 100")
        return
    }

    print("Accepted \(name) with \(mark) marks")
}

addStudent(name: "Tharindu", mark: 64)
addStudent(name: nil, mark: 64)
addStudent(name: "", mark: 64)
addStudent(name: "Tharindu", mark: nil)
addStudent(name: "Tharindu", mark: 120)

print("--------------------------------")

// Returning several results together using a tuple.
// The array is checked first, so min() and max() are never forced on an
// empty array. An empty array returns nil instead of crashing.

func summary(of group: [Student]) -> (minimum: Int, maximum: Int, average: Double)? {

    guard !group.isEmpty else {
        return nil
    }

    let groupMarks = group.map { $0.mark }
    let total = groupMarks.reduce(0, +)

    return (
        groupMarks.min()!,
        groupMarks.max()!,
        Double(total) / Double(group.count)
    )
}

if let result = summary(of: students) {
    print("Lowest Mark: \(result.minimum)")
    print("Highest Mark: \(result.maximum)")
    print("Average Mark: \(result.average)")
} else {
    print("No students to summarise")
}

if let result = summary(of: []) {
    print("Average Mark: \(result.average)")
} else {
    print("No students to summarise")
}

print("--------------------------------")

// Value type and reference type demonstration.

var originalStudent = Student(studentID: "IT006", name: "Original", mark: 60)
var copiedStudent = originalStudent

copiedStudent = Student(studentID: "IT006", name: "Copy", mark: 95)

// A struct is a value type, so copiedStudent received its own copy and
// the original was left unchanged.
print("Struct original: \(originalStudent.name) - \(originalStudent.mark)")
print("Struct copy: \(copiedStudent.name) - \(copiedStudent.mark)")

class StudentRecord {

    var name: String
    var mark: Int

    init(name: String, mark: Int) {
        self.name = name
        self.mark = mark
    }
}

let firstRecord = StudentRecord(name: "Shared", mark: 60)
let secondRecord = firstRecord

secondRecord.mark = 95

// A class is a reference type, so both constants point at the same
// object and the change is visible through either one.
print("Class first reference: \(firstRecord.name) - \(firstRecord.mark)")
print("Class second reference: \(secondRecord.name) - \(secondRecord.mark)")
