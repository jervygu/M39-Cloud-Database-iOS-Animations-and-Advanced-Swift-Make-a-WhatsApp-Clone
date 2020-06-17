import UIKit

func calculator(num1: Int, num2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(num1, num2)
}

func multiply(n1: Int, n2: Int) -> Int {
    return n1 * n2
}

//================= closure cmultiply --> place it as input to the method calculator to be the operation

//{ (n1: Int, n2: Int) -> Int in
//    return n1 * n2
//}

//  type inference
//{ (n1, n2) -> Int in return n1 * n2 }

//  return type inference
//{ (n1, n2) in return n1 * n2 }

//  2nd return type inference
//{ (n1, n2) in n1 * n2 }

//  anonymous parameter names ---> $0 = 1st parameter, $1 2nd parameter .....
//{ $0 * $1 }

//  trailing closure
//let result = calculator(num1: 4, num2: 2) { $0 * $1 }

//================= closure cmultiply --> place it as input to the method calculator as operation

func add(n1: Int, n2: Int) -> Int {
    return n1 + n2
}

func subtract(n1: Int, n2: Int) -> Int {
    return n1 - n2
}

let result = calculator(num1: 3, num2: 4, operation: multiply)

//  turned to closure
let closure1 = calculator(num1: 3, num2: 4, operation: { (n1: Int, n2: Int) -> Int in
    return n1 * n2
})

//  type inference(closure input)
let closure2 = calculator(num1: 3, num2: 4, operation: { (n1, n2) -> Int in return n1 * n2 })

//  type inference(input, output)
let closure3 = calculator(num1: 3, num2: 4, operation: { (n1, n2) in return n1 * n2 })

//  type inference(input, output) return
let closure4 = calculator(num1: 3, num2: 4, operation: { (n1, n2) in n1 * n2 })

//  anonymous parameter
let closure5 = calculator(num1: 3, num2: 4, operation: { $0 * $1 })

//  trailing closure, if last parameter is a closure, 
let trailingClosure = calculator(num1: 6, num2: 2) { $0 * $1 }

print("Result ", result)
print("Closure1 ", closure1)
print("Closure2 ", closure2)
print("Closure3 ", closure3)
print("Closure4 ", closure4)
print("Closure5 ", closure5)
print("Trailing Closure ", trailingClosure)

