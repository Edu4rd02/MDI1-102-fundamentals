//
//  Switch.swift
//  
//
//  Created by Jose Eduardo Becerra Flores on 29/10/26.
//

/*
  --- SWITCH ---
 Lets you compare one value against multiple possible cases and run different code depending on which case matches.
 It’s used when you want to check many conditions in a clean and organized way.
 
 -- SYNTAX --
 switch value {
     case pattern1:
         code to run if value matches pattern1
     case pattern2:
         code to run if value matches pattern2
     default:
         code to run if no cases match
 }
 */

import Playgrounds

#Playground {
    print("--- SWITCH ---")
    
    let number = 2
    
    switch number {
    case 1:
        print("One")
    case 2:
        print("Two")
    case 3:
        print("Three")
    default:
        print("Other")
    }
    
    let position = 23
    
    switch position {
    case 1:
        print("🥇 You came first")
    case 2:
        print("🥈 You came second")
    case 3:
        print("🥉 You came third")
    default:
        print("You placed \(position)")
    }
    
    print("\n-- TEXT (String), matching multiple values --")
    
    let grade = "A+"
    
    switch grade {
    case "A", "A+":
        print("Excellent!")
    case "B", "B+" :
        print("Good job")
    case "C":
        print("You passed")
    default:
        print("Try again")
    }
}
