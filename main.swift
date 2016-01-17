//
//  main.swift
//  Software ISP
//
//  Created by Student on 2016-01-16.
//  Copyright © 2016 Gilbert Chien. All rights reserved.
//

import Foundation

print("Hello, World!")


// Print welcome message on it's own line
print("Welcome.")


// Print prompt (but don't go to new line)
print("What is your name? ", terminator: "")

// Get the user's name
var givenName = readLine(stripNewline: true)

// Say hello, so long as some input was provided
// Add an extra newline at the start     \n
if let name = givenName {
    print("\nNice to meet you, \(name)!")
}


// Ask about food preferences
var validInput : Bool          // Status of input
repeat {
    
    // Show prompts
    print("\nWhat is your input instrument?")
    print("A - Trumpet/Tenor/Clarinet/Flute")
    print("B - Alto/Baritone")
    print("C - Trombone")
    print("Select your favourite (A/B/C/Quit): ", terminator: "")
    
    // Get the user's input
    var inputInstrument = readLine(stripNewline: true)
    
    // Assume valid input
    print("\nWhat is your Output instrument?")
    print("A - Trumpet/Tenor/Clarinet/Flute")
    print("B - Alto/Baritone")
    print("C - Trombone")
    print("Select your favourite (A/B/C/Quit): ", terminator: "")
    var outputInstrument = readLine(stripNewline: true)
    
    print("\nWhat is your input note?")
    print("Bb", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A")
    print("1", " 2", "3", "4", " 5", "6", " 7", "8", "9", "10", "11", "12")
    var inputNote = readLine(stripNewline: true)
    
    validInput = true
    
    
    // Input Note
    var notes1 = ["Bb", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A"]
    // Interpret the result, if one was given
    var num = Int(inputNote!)
    
    //    if let a = inputInstrument{
    //    print ("")
    //        switch a {
    //    case "a":
    //            print ("adsf")
    //        default:
    //            print("sadfs")
    //        }
    //
    //    }
    var instCombo = 0
    if (inputInstrument == "a" && outputInstrument == "b"){
        instCombo = 1
    }
    
    if (inputInstrument == "b" && outputInstrument == "a"){
        instCombo = 2
    }
    
    //     {
    if instCombo == 1{
        if let outputNote = inputNote{
            // Add a blank line to separate response from input block
            print("")
            
            switch outputNote {
                
            case "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12":
                print(notes1[(num!+6)%12])
                
                
            default:
                print("Sorry, I didn't get that.")
                validInput = false
            }
        }
    }
    if instCombo == 2{
        if let outputNote = inputNote{
            // Add a blank line to separate response from input block
            print("")
            
            switch outputNote {
                
            case "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12":
                print(notes1[(num!+5)%12])
                
                
            default:
                print("Sorry, I didn't get that.")
                validInput = false
            }
        }
    }
} while validInput == false

// Print one additional blank line to separate from exit code message that is automatically displayed
print("")


// Use an if statement that will assign a number to a variable depending on the instrument choices ie. tenor -> alto = 1
