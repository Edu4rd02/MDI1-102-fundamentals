//
//  Arrays.swift
//  
//
//  Created by Jose Eduardo Becerra Flores on 31/10/26.
//

/*
 ----- ARRAY -----
 Ordered collection that stores multiple values of the same type in a single variable.
 Values are stored in a specific order.
 Each value has an index starting at 0.
 
 ----- SYNTAX -----
 var/let arrayName:[dataType] = [value1, value2, value3, ...]
 */

import Playgrounds

#Playground {
    print("----- ARRAYS -----")
    print("\n-- Basic Array (String) --")
    
    var studentNames:[String] = ["Jade", "Eduardo", "Leo"]
    print(studentNames)
    print(studentNames[0])
    print(studentNames[1])
    print(studentNames[2])
    print(studentNames.count)
    
    print("\n -- Adding a new student (append) --")
    studentNames.append("Angela")
    print(studentNames)
    
    print("\n -- Removing a item (remove by index)")
    studentNames.remove(at: 2)
    print(studentNames)
    
    print("\n -- Adding a new student in X position (insert) --")
    studentNames.insert("Mike", at: 0)
    print(studentNames)
    
    print("\n -- Array (Double) --")
    var prices:[Double] = [9.99,10.49,5.99]
    print(prices)
    
    let total = prices[0] + prices[1] + prices[2]
    print("Total: $\(total)")
    
    /*
        Mini-Challenge
        
        Steps:
        1. Create an array called hobbies with 5 hobbies
        2. Print the array
        3. Add a new hobby to the list
        4. Print how many hobbies you have
        5. Remove the hobby in position 3
        6. Print the hobbies array
     
     */
    print("\n -- CHALLENGE --")
    
    // Step 1
    var hobbies:[String] = ["Basketball", "Videogames","Perfumes","Volleyball","Local IA"]
    
    // Step 2
    print(hobbies)
    
    // Step 3
    hobbies.append("Soccer")
    
    // Step 4
    print("Number of hobbies: \(hobbies.count)")
    
    // Step 5
    hobbies.remove(at: 3)
    
    // Step 6
    print(hobbies)
}
