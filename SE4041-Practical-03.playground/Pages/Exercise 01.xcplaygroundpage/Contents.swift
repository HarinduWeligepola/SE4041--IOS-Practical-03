// Exercise 01 - Functions

// A function is a named block of code that performs one task. Functions
// stop us repeating code and let a piece of logic be reused.

// Step 1 - A simple function

func greet() {
    print("Welcome to SE4041")
}

greet()

// The function body only runs when the function is called.

// Step 2 - Function with a parameter

func greetStudent(name: String) {
    print("Welcome \(name)")
}

greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")

// A parameter lets different values be passed into the same function.

// Returning a value

func grade(for mark: Int) -> String {

    if mark >= 50 {
        return "Pass"
    }

    return "Fail"
}

let gradeResult = grade(for: 68)
print(gradeResult)

// -> String means the function hands back a String to whoever called it.

// Activity 1

func calculateAverage(_ first: Double, _ second: Double, _ third: Double) -> Double {
    return (first + second + third) / 3.0
}

let averageResult = calculateAverage(75, 82, 68)
print(averageResult)

// Argument labels
// from and to are the external argument labels. town and city are the
// names used inside the function body.

func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}

travel(from: "Malabe", to: "Kandy")

// Removing an argument label with _

func double(_ number: Int) -> Int {
    return number * 2
}

print(double(10))

// The call reads double(10) instead of double(number: 10).

// Default parameter values

func result(_ mark: Int, passMark: Int = 50) -> String {

    if mark >= passMark {
        return "Pass"
    }

    return "Fail"
}

print(result(68))
print(result(68, passMark: 75))

// A default value makes that parameter optional at the call site.

// Activity 2

func finalResult(mark: Int, passMark: Int = 50) -> String {

    if mark >= passMark {
        return "Pass"
    }

    return "Fail"
}

print(finalResult(mark: 45))
print(finalResult(mark: 75))
print(finalResult(mark: 75, passMark: 80))
