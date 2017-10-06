//
//  main.swift
//  SimpleCalc
//
//  Created by Naruth Kongurai on 10/5/17.
//  Copyright © 2017 Naruth Kongurai. All rights reserved.
//


/*
 user can enter a number, hit return
 user can enter an operation (add, sub, mul, div, mod), then return
 user can enter a number, hit return
 program calculates the result
 
 
 "count": count the number of input
 10 4 25 17 5 count => 5
 "avg": average all the inputs
 2 4 6 8 10 avg => 6
 any of these can take any number of inputs
 "fact": calculate factorial
 5 fact => 120
 fact can only accept one number
 
 */

import Foundation

print("Enter an expression separated by returns:")
let response1 = readLine(strippingNewline: true)!
let response2 = readLine(strippingNewline: true)!
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
//print("Answer: \(response1) \(response2) \(response3)")

