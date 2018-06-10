//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

for idx in 1...9 {
    for idy in 1...9 {
        print("\(idx) times \(idy) is \(idx*idy)")
    }
}

var sum:Int = 0
for num in 5...15{
    sum += num
}
print(sum)
