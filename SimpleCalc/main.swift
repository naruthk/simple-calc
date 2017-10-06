//
//  main.swift
//  SimpleCalc
//
//  Created by Naruth Kongurai on 10/5/17.
//  Copyright © 2017 Naruth Kongurai. All rights reserved.
//

/*
     This basic calculator console program allows the user to enter a number, hit return,
     follow by an operation (add, sub, mul, div, mod), then return, and follow by a number,
     then hit return. The program then calculates the result.
 
     Additionally, the user can ask for a count or an average of the number of input. Lastly,
     the user can ask for a factorial of a single number.
 */

import Foundation

print("Enter an expression separated by returns:")
let response1:String = readLine(strippingNewline: true)!

var response1array = response1.components(separatedBy: " ")

if (response1array.count > 1) {
    
    let type:String = response1array[response1array.count - 1]
    response1array.removeLast()  // remove the operator type that the user has specified
    
    if (type == "count") {
        print(response1array.count)
    }
    if (type == "avg") {
        var result = 0;
        for number in response1array {
            result = Int(number)! + result
        }
        print(result / response1array.count)
    }
    if (type == "fact") {
        if (response1array.count == 1) {
            var fact: Int = 1
            var n: Int = Int(response1array[0])! + 1
            for i in 1..<n {
                fact = fact * i
            }
            print(fact)
        } else {
            print("Must be a single number")
        }
    }
    
} else {

    let response2:String = readLine(strippingNewline: true)!

    if (response2 == "+" || response2 == "-" ||
        response2 == "*" || response2 == "/" ||
        response2 == "%") {
        let response3 = readLine(strippingNewline: true)!

        let r1:Int = Int(response1)!
        let r3:Int = Int(response3)!

        var result = 0
        if (response2 == "+") {
            result = r1 + r3
        }
        if (response2 == "-") {
            result = r1 - r3
        }
        if (response2 == "*") {
            result = r1 * r3
        }
        if (response2 == "/") {
            result = r1 / r3
        }
        if (response2 == "%") {
            result = r1 % r3
        }

        print("Result: \(result)")
        
    } else {
        print("Invalid expression entered. Please run console again.")
    }
}
 