//
//  Exercise03.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 02 – Collections & Control Flow in Swift
//  Exercise 03 – Dictionaries
//

import Foundation

// MARK: - Step 1 – Create a Dictionary
print("--- Step 1: Create a Dictionary ---")
var marks = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print(marks)

// MARK: - Step 2 – Retrieve a Value
print("\n--- Step 2: Retrieve a Value ---")
print(marks["Amal"] as Any)

// MARK: - Step 3 – Safely Retrieve a Value
print("\n--- Step 3: Safely Retrieve a Value ---")
print(marks["Amal"] ?? 0)
print(marks["Kasun"] ?? 0)

// MARK: - Step 4 – Use Optional Binding
print("\n--- Step 4: Use Optional Binding ---")
if let mark = marks["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

// MARK: - Step 5 – Add and Update Values
print("\n--- Step 5: Add and Update Values ---")
// Add a student
marks["Sanduni"] = 90
// Update a student
marks["Amal"] = 75
// Remove a student
marks["Ruwan"] = nil
print(marks)

// MARK: - Activity 3 – Phone Book
print("\n--- Activity 3: Phone Book ---")
// Create dictionary containing Name -> Phone Number with at least 4 contacts
// Demonstration-only contacts: intentionally fictional phone numbers.
var phoneBook: [String: String] = [
    "Himsara": "+94-XX-000-1001",
    "Dinuka": "+94-XX-000-1002",
    "Tharushi": "+94-XX-000-1003",
    "Kavindu": "+94-XX-000-1004"
]
print("Initial Phone Book:", phoneBook.sorted { $0.key < $1.key })

// 1. Add a new contact
phoneBook["Nethmi"] = "+94-XX-000-1005"
print("\n1. Added Nethmi:", phoneBook.sorted { $0.key < $1.key })

// 2. Update one phone number
phoneBook["Himsara"] = "+94-XX-000-1999"
print("2. Updated Himsara's number:", phoneBook.sorted { $0.key < $1.key })

// 3. Remove one contact
phoneBook["Kavindu"] = nil
print("3. Removed Kavindu:", phoneBook.sorted { $0.key < $1.key })

// 4. Search for a contact using if let
print("\n4. Search for existing contact ('Dinuka'):")
let searchExisting = "Dinuka"
if let phoneNumber = phoneBook[searchExisting] {
    print("\(searchExisting)'s Phone Number: \(phoneNumber)")
} else {
    print("Contact not found")
}

// 5. Display "Contact not found" if the key does not exist
print("\n5. Search for non-existent contact ('Imesha'):")
let searchNonExistent = "Imesha"
if let phoneNumber = phoneBook[searchNonExistent] {
    print("\(searchNonExistent)'s Phone Number: \(phoneNumber)")
} else {
    print("Contact not found")
}
