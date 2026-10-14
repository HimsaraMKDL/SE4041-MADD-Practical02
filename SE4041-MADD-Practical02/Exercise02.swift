//
//  Exercise02.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 02 – Collections & Control Flow in Swift
//  Exercise 02 – Sets
//

import Foundation

// MARK: - Step 1 – Create a Set
print("--- Step 1: Create a Set ---")
var towns: Set = ["Malabe", "Kandy", "Galle"]
print(towns)

// MARK: - Step 2 – Insert Values
print("\n--- Step 2: Insert Values ---")
towns.insert("Jaffna")
towns.insert("Kandy")
print(towns)
print(towns.count)

// MARK: - Step 3 – Check Membership
print("\n--- Step 3: Check Membership ---")
print(towns.contains("Kandy"))
print(towns.contains("Colombo"))

// MARK: - Step 4 – Remove an Item
print("\n--- Step 4: Remove an Item ---")
towns.remove("Galle")
print(towns)

// MARK: - Step 5 – Set Operations
print("\n--- Step 5: Set Operations ---")
let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print("Union:", swiftClass.union(kotlinClass).sorted())
print("Intersection:", swiftClass.intersection(kotlinClass).sorted())
print("Subtracting:", swiftClass.subtracting(kotlinClass).sorted())
print("Symmetric Difference:", swiftClass.symmetricDifference(kotlinClass).sorted())

// MARK: - Activity 2
print("\n--- Activity 2: Student Enrollment Sets ---")
// Create two sets with at least four names each and at least two shared students
let mobileDevelopmentStudents: Set<String> = ["Himsara", "Dinuka", "Sahan", "Tharushi", "Nethmi"]
let gameTechnologyStudents: Set<String> = ["Himsara", "Sahan", "Kavindu", "Isuri", "Yasiru"]

print("Mobile Development Students:", mobileDevelopmentStudents.sorted())
print("Game Technology Students:", gameTechnologyStudents.sorted())

// 1. All students
let allStudents = mobileDevelopmentStudents.union(gameTechnologyStudents)
print("\n1. All students:", allStudents.sorted())

// 2. Students taking both modules
let bothModules = mobileDevelopmentStudents.intersection(gameTechnologyStudents)
print("2. Students taking both modules:", bothModules.sorted())

// 3. Students taking only Mobile Development
let onlyMobile = mobileDevelopmentStudents.subtracting(gameTechnologyStudents)
print("3. Students taking only Mobile Development:", onlyMobile.sorted())

// 4. Students taking only one of the modules
let onlyOneModule = mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents)
print("4. Students taking only one of the modules:", onlyOneModule.sorted())
