import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    let cheese = "My favorite cheese is \(cheese)."
    return cheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."



/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4] //changed to var from let to be able to append
// Add 5 to this array
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
numberDictionary[5] = "five"
numberDictionary //check


/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for i in 1...10 {
    println("\(i)");
}

// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1..<11 {
    println("\(i)");
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:[[String : String]]) -> [String] {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    
    var output:[String] = []
    
    for character in characters {
        for (key,value) in character {
            if key == "favorite drink" {
                output.append(value)
            }
        }
    }
    
    return output
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)


/*

Optionals

*/

func emailFromUserDict(userDict : [String : String]) -> String {
    // Return the user's email address from userDict, or return "" if they don't have one
    
    for (key,value) in userDict {
        if key == "email" {
            return value
        }
    }
    
    return ""
}


let mostafaElSayedUser = ["name" : "Mostafa A. El-Sayed", "occupation" : "Chemical Physicist", "email" : "mael-sayed@gatech.edu", "awards" : "Langmuir Award in Chemical Physics, Arabian Nobel Prize, Ahmed Zewail prize, The Class of 1943 Distinguished Professor, 2007 US National Medal of Science", "birthday" : "8 May 1933"]

let marjorieBrowneUser = ["name" : "Marjorie Lee Browne", "occupation" : "Mathematician", "birthday" : "September 9, 1914"]


// If your emailFromUserDict function is implemented correctly, both of these should output "true":

emailFromUserDict(mostafaElSayedUser) //check
emailFromUserDict(marjorieBrowneUser) //check

emailFromUserDict(mostafaElSayedUser) == "mael-sayed@gatech.edu"
emailFromUserDict(marjorieBrowneUser) == ""



/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

func stringFunction (inputs : [String]) -> String {
    
    var output:String = ""
    
    for input in inputs {
        if inputs[(inputs.count)-1] == input { //stops last one from adding ";"
            output = output + "\(input)"
        } else {
            output = output + "\(input);" //for rest adds ";"
        }
    }
    
    return output
}

let expectedOutput = "milk;eggs;bread;challah"

stringFunction(strings) //check

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically

let sortedArray = sorted(cerealArray, {
    (s1: String, s2: String) -> Bool in
    return s1 < s2
})
