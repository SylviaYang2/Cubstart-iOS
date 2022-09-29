import UIKit

var greeting = "Hello, playground"
print(greeting)

var name = "jordan"

let num = [1,2,3,4,5]

for n in num {
    print(n)
}

func sum(a: Int, b: Int) -> Int {
    return a + b
}

var summation = sum(a: 12, b: 3)
print(summation)

func over(a: Int) -> Bool {
    return a >= 5
}

print(over(a: 6))


// Facebook login exercise
func login(name: String, age: Int, west: Bool) {
    if (age >= 13 || west) {
        print("Welcome to Facebook, \(name)")
    } else {
        print("Too young for Facebook")
    }
}

login(name: "Sylvia", age: 20, west: true)
