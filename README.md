# SE4041 - Practical 03: Functions, Enums, Structs and Classes in Swift

**Module:** SE4041 - Mobile Application Design and Development
**Programme:** BSc (Hons) in Information Technology - Interactive Media
**Year 04, Semester 01**
**Language:** Swift

## Student Details

| | |
|---|---|
| Name | Harindu Weligepola |
| Student ID | 23257504 |
| Environment used | Xcode Playground |

## Practical Overview

This practical organises Swift code into reusable components. It covers
functions, parameters and return values, argument labels, default
parameter values, `guard`, tuples, closures with `map`, `filter` and
`reduce`, enumerations, structures with stored and computed properties,
methods, classes, and the difference between value types and reference
types.

These are the last Swift language topics before SwiftUI, and they map
onto it directly: a SwiftUI screen is a struct, `body` is a computed
property, and SwiftUI uses closures constantly.

## Repository Structure

```
SE4041-Practical-03/
├── README.md
├── SE4041-Practical-03.playground/    (open this in Xcode)
├── Exercise01.swift
├── Exercise02.swift
├── Exercise03.swift
├── Exercise04.swift
├── Exercise05.swift
├── Exercise06.swift
├── FinalChallenge.swift
└── screenshots/
```

## Opening This in Xcode

Double-click `SE4041-Practical-03.playground` to open the whole
practical in Xcode. It contains one page per exercise, listed in the
navigator on the left, and each page runs on its own.

The individual `.swift` files in the repository root are the same code
saved separately, as the lab sheet requires for submission.

## What Each File Contains

| File | Topic |
|---|---|
| `Exercise01.swift` | Functions, parameters, return values, argument labels, default parameters, Activities 1 and 2 |
| `Exercise02.swift` | `guard` and early exit validation, Activity 3 |
| `Exercise03.swift` | Tuples, named tuple returns, tuple unpacking, Activity 4 |
| `Exercise04.swift` | Closures with `filter`, `map` and `reduce`, Activity 5 |
| `Exercise05.swift` | Enumerations, `switch` over an enum, raw values, Activity 6 |
| `Exercise06.swift` | Structs, computed properties, methods, `mutating`, classes, value vs reference types, knowledge check answers |
| `FinalChallenge.swift` | Student Management System with the additional challenge |

Where the lab sheet redefines the same type more than once, the files
keep a single clear version per name (for example `BasicStudent` for the
memberwise initializer example and `Student` for the version with a
computed grade and a method), so each file compiles without
redeclaration errors.

## Struct or Class

| Requirement | Preferred type |
|---|---|
| Model simple data | `struct` |
| Independent copies required | `struct` |
| Shared instance required | `class` |
| Inheritance required | `class` |
| Unsure which to use | `struct` |

## Final Task: Student Management System

The final challenge contains:

- a `Grade` enum with raw values from `A` down to `F`,
- a `Student` struct holding `studentID`, `name` and `mark`,
- a computed `grade` property using a `switch` over the grade bands
  (`80...100` is A, `75..<80` is A-, down to below 40 which is F),
- a `displayDetails()` method,
- five students displayed with a `for-in` loop,
- `filter` for the students with a mark of 50 or above,
- `map` for the student names,
- `reduce` for the total marks and the class average.

With the sample data (Amal 72, Nimali 45, Ruwan 68, Sanduni 90,
Kasun 38) the total is 313 and the class average is `62.6`.

The grade bands and the pass filter are two separate rules, and both are
kept. Nimali is awarded a C with 45 marks but is still excluded from the
filtered array, because 45 is below the pass mark of 50.

The additional challenge adds `guard let` validation for an optional
name and mark, a tuple summary that returns `nil` for an empty array
rather than crashing on `min()!`, and a demonstration that a struct is
copied on assignment while two references to a class share one object.

## My Practical Evidence

![Exercise output](screenshots/01-Exercises.png)
![Final challenge output](screenshots/02-Final-Challenge.png)

## Submission Checklist

- [ ] All six exercise files included and run independently
- [ ] Functions demonstrate parameters, return values, argument labels and defaults
- [ ] Optional values safely unwrapped using `guard let`
- [ ] A function returns multiple values using a tuple
- [ ] Closures demonstrate `map`, `filter` and `reduce`
- [ ] Enums and raw values demonstrated
- [ ] Structs demonstrate stored and computed properties
- [ ] Methods and a `mutating` method demonstrated
- [ ] A class includes an initializer and a method
- [ ] Value and reference semantics demonstrated
- [ ] Knowledge check questions reviewed
- [ ] Final challenge includes the grade enum and the Student struct
- [ ] At least five students created and displayed
- [ ] Filtered array uses `mark >= 50`
- [ ] Names extracted with `map`, marks totalled with `reduce`
- [ ] Output screenshots included
- [ ] Changes committed, pushed and visible on GitHub
