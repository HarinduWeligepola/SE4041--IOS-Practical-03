// Exercise 04 - Closures, map, filter and reduce

// A closure is a block of code that can be passed around like a value.
// SwiftUI uses closures constantly, so they are worth getting used to.

let marks = [72, 45, 65, 48, 90]

// filter selects the values that satisfy a condition.
// $0 means the current element.

let passed = marks.filter { $0 >= 50 }
print(passed)

// map transforms every value and returns a new array. The original
// array is left unchanged.

let increasedMarks = marks.map { $0 + 5 }
print(increasedMarks)
print(marks)

// reduce combines all the values into a single value.
// $0 is the running result and $1 is the current element.

let total = marks.reduce(0) { $0 + $1 }
print(total)

// Activity 5
// No for loop is used in this activity.

let prices = [120.0, 250.0, 80.0, 500.0, 150.0]

let expensivePrices = prices.filter { $0 > 100 }
print(expensivePrices)

let increasedPrices = prices.map { $0 + 10 }
print(increasedPrices)

let totalPrice = prices.reduce(0) { $0 + $1 }
print(totalPrice)
