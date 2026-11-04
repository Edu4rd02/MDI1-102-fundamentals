//
//  Dictionaries.swift
//  MDI1-102-fundamentals
//
//  Created by Jose Eduardo Becerra Flores on 03/11/26.
//

/*
----- DICTIONARIES ------
Unordered collection that stores key-values pairs.
Each key must be unique.
Each key maps to a value.

------ Syntax ------
 var/let dictionaryName:[keyType: valueType] = [
    key1:value1,
    key2:value2,
    key3:value3,
    ...
 ]
 */

import Playgrounds

#Playground{
    let studentInformation:[String: String] = [
        "firstName": "Eduardo",
        "lastName": "Becerra",
        "cohort": "14",
        "email": "jose.becerra@sdgku.edu"
    ]
    
    print(studentInformation)
    print("\n -- Accesssing values --")
    print(studentInformation["firstName"]!)
    print(studentInformation["firstName"] ?? "Unknown name") // nullish coalescing operator
    print(studentInformation["cohort"] ?? "Unknown cohort")
    print(studentInformation["lastName"] ?? "No last name")
    print(studentInformation["email"] ?? "Email not found")
    
    print("\n -- Int values --")
    var servingsAvailable:[String: Int] = [
        "Pizza": 12,
        "Pasta": 7,
        "Salad": 8
    ]
    
    print(servingsAvailable)
    print(servingsAvailable.keys)
    print(servingsAvailable.values)
    
    print("\n-- Add a new item --")
    // Add a item
    servingsAvailable["Soup"] = 4
    print(servingsAvailable)
    
    // Update a value
    print("\n-- Update an existing item --")
    servingsAvailable["Pizza"] = 15
    print(servingsAvailable)
    
    // Remove a value
    print("\n-- Remove an existing item --")
    servingsAvailable["Pasta"] = nil
//    servingsAvailable.removeValue(forKey: "Pasta") // Alternative, but this return the value eliminated
    print(servingsAvailable)
    
    // Remove all items for the dictionary
    print("\n-- Remove all items --")
    servingsAvailable.removeAll()
    print(servingsAvailable)
}
