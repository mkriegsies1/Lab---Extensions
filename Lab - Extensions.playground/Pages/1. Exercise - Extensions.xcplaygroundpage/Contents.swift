/*:
 ## Exercise - Extensions
 
 Define an extension to `Character` that includes a function `isVowel()`. The function returns `true` if the character is a vowel (a,e,i,o,u), and `false` otherwise. Be sure to properly handle uppercase and lowercase characters.
 */
var testCharacter: Character = "E"

        //ensures the character is lowercased
func lowercaseTheLetter() -> Character {
    let testCharacterLowered: String = String(testCharacter)
        testCharacter = Character(testCharacterLowered.lowercased())
    return testCharacter
    
}
    lowercaseTheLetter()


extension Character {
    mutating func isVowel() -> Bool {
                //tests to see if its a vowel (contains a e i o or u)
        if testCharacter == "a" ||  testCharacter == "e" || testCharacter == "i" || testCharacter == "o" || testCharacter == "u"
            {
               return true
        }
        return false
    }
}
testCharacter.isVowel()


/*:
 Create two `Character` constants, `myVowel` and `myConsonant`, and set them to a vowel and a consonant, respectively. Use the `isVowel()` methods on each constant to determine whether or not it's a vowel.
 */
//print("test to see if xCode works")
/*:
 Create a `Rectangle` struct with two variable properties, `length` and `width`, both of type `Double`. Below the definition, write an extension to `Rectangle` that includes a function, `halved()`. This function returns a new `Rectangle` instance with half the length and half the width of the original rectangle.
 */


/*:
 Within the existing `Rectangle` extensions, add a new mutating function, `half()`, which updates the original rectangle to have half the length and half the width. Use the `halved()` function as part of the implementation for `half()`.
 */


/*:
 Create a variable `Rectangle` called `myRectangle`, and set its length to 10 and its width to 5. Create a second instance, `mySmallerRectangle`, that's the result of calling `halved()` on `myRectangle`. Then update the values of `myRectangle` by calling `half()` on itself. Print each of the instances.
 */


//: page 1 of 2  |  [Next: App Exercise - Workout Extensions](@next)
