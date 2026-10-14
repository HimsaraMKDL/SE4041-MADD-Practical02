//
//  Exercise05.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 02 – Collections & Control Flow in Swift
//  Exercise 05 – switch and Ranges
//

import Foundation

// MARK: - Example 1: Basic switch Statement
print("--- Example 1: Basic switch Statement ---")
func evaluateGrade(_ grade: String) {
    switch grade {
    case "A":
        print("Excellent")
    case "B", "C":
        print("Good")
    case "D":
        print("Needs Work")
    default:
        print("Unknown Grade")
    }
}

let grade = "B"
evaluateGrade(grade)

// MARK: - Example 2: Using Ranges in a Switch
print("\n--- Example 2: Using Ranges in a Switch ---")
func evaluateMarkWithRange(_ mark: Int) {
    switch mark {
    case 75...100:
        print("Distinction")
    case 50..<75:
        print("Pass")
    case 0..<50:
        print("Fail")
    default:
        print("Invalid Mark")
    }
}

let mark = 68
evaluateMarkWithRange(mark)

// MARK: - Activity 5 – Temperature Description
print("\n--- Activity 5: Temperature Description ---")

func describeTemperature(_ temperature: Int) {
    switch temperature {
    case ..<0:
        print("Freezing")
    case 0...15:
        print("Cold")
    case 16...25:
        print("Moderate")
    case 26...35:
        print("Warm")
    case 36...:
        print("Hot")
    default:
        print("Unknown")
    }
}

let temperature = 32
print("Temperature \(temperature)°C -> ", terminator: "")
describeTemperature(temperature)

// Test your program using at least three temperatures
print("\n--- Testing with Multiple Temperatures ---")
let testTemperatures = [-3, 0, 15, 16, 25, 26, 35, 36, 42]
for temp in testTemperatures {
    print("Temperature \(temp)°C -> ", terminator: "")
    describeTemperature(temp)
}
