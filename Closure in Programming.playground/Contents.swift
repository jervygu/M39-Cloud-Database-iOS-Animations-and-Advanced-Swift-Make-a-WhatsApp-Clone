import UIKit


var myArray = [1,2,6,8,7,5,6,4]

func addOne(n1: Int) -> Int {
    return n1 + 1
}



// added one to myArray elements
myArray.map(addOne)

// addOne
myArray.map({(n1: Int) -> Int in
    return n1 + 1
})

// addOne
myArray.map({(n1) in
    n1 + 1
})

// addOne
print(myArray.map({ $0 + 1 }))

// addOne
print(myArray.map{ $0 + 1 })

// iterate to array using loop
for i in myArray {
    print("\(i) ", terminator:"")
}

print("")
// elements to string using map and closure
let arrayString = myArray.map{"\($0)"}
print(arrayString)

myArray.append(10)
myArray.removeAll()
myArray.append(1)
myArray.append(2)
myArray.append(3)

// map returns array
let mapIterate = myArray.map{$0}
print(mapIterate)

// forEach returns value in print
myArray.forEach(){print($0)}

