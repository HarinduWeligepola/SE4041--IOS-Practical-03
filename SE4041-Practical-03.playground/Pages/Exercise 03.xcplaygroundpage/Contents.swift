// Exercise 03 - Tuples

// A tuple groups several values together, which lets a function return
// more than one result.

func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {

    let total = marks.reduce(0, +)

    return (
        marks.min()!,
        marks.max()!,
        Double(total) / Double(marks.count)
    )
}

// This function must be called with a non-empty array, because min()!
// and max()! assume that a value exists.

let marksSummary = summary(of: [72, 65, 48, 90])

print(marksSummary.minimum)
print(marksSummary.maximum)
print(marksSummary.average)

// Tuple unpacking

let (low, high, average) = summary(of: [72, 65, 48, 90])

print(low)
print(high)
print(average)

// An underscore is used for a part of the tuple that is not needed.

let (lowest, highest, _) = summary(of: [72, 65, 48, 90])

print(lowest)
print(highest)

// Activity 4

func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {

    let total = marks.reduce(0, +)

    return (
        total,
        Double(total) / Double(marks.count)
    )
}

let analysis = analyzeMarks([60, 70, 80, 90])

print("Total: \(analysis.total)")
print("Average: \(analysis.average)")
