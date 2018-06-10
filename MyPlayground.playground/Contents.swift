//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let name = "vonvon"
let rr = true

print("我把rr變字串\(rr)")
var qq:String? //還不用指定內容
print(qq ?? "avon")//沒值就填入avon

var myArray = ["a","b","c"]
myArray.append("d")
print(myArray)

var myFirstNumber = myArray[0]
var myThirdNumber = myArray[2]

print(myFirstNumber)

myArray.count

var myDictionary = ["None":2,"jojo":4,"koisk":3]
myDictionary["None"]
//myDictionary[2]

var weather = "sunny"
if weather == "sunny"
{
    print("go to park")
}
else
{
    print("borrow umbrella")
}

for idx in 1...9 {
    for idy in 1...9 {
        print("\(idx) times \(idy) is \(idx*idy)")
    }
}


