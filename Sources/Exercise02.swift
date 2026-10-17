// Exercise 02 - guard

// guard is used when a function should stop straight away if a required
// condition is not satisfied. The invalid case is handled first and the
// unwrapped value stays available for the rest of the function.

func register(_ name: String?) {

    guard let name = name else {
        print("No name given")
        return
    }

    guard !name.isEmpty else {
        print("Name cannot be empty")
        return
    }

    print("Registered \(name)")
}

register("Kamal")
register(nil)
register("")

// Activity 3

func checkStudent(name: String?, mark: Int?) {

    guard let name = name else {
        print("Student name unavailable")
        return
    }

    guard let mark = mark else {
        print("Student mark unavailable")
        return
    }

    print("\(name) received \(mark) marks")
}

checkStudent(name: "Kamal", mark: 75)
checkStudent(name: nil, mark: 75)
checkStudent(name: "Kamal", mark: nil)
