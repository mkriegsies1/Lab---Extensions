/*:
 ## Exercise - Extensions
 
 Define an extension to `Character` that includes a function `isVowel()`. The function returns `true` if the character is a vowel (a,e,i,o,u), and `false` otherwise. Be sure to properly handle uppercase and lowercase characters.
 */
var testCharacter: Character = "A"

extension Character {
    func isVowel() -> Bool {
        
        var characterLowered = String(self)
                //makes the character lowercased
        func lowercaseTheLetter() -> Character {
            characterLowered = characterLowered.lowercased()
            return Character(characterLowered)
            
        }
         lowercaseTheLetter()
        
                //tests to see if the character is a vowel (contains a e i o or u)
        if characterLowered == "a" ||  characterLowered == "e" || characterLowered == "i" || characterLowered == "o" || characterLowered == "u"
            {
            return true
        } else {
                return false
                }
        
    }
}

testCharacter.isVowel()


/*:
 Create two `Character` constants, `myVowel` and `myConsonant`, and set them to a vowel and a consonant, respectively. Use the `isVowel()` methods on each constant to determine whether or not it's a vowel.
 */
let myVowel: Character = "a"
let myConstant: Character = "k"

myVowel.isVowel()
myConstant.isVowel()

/*:
 Create a `Rectangle` struct with two variable properties, `length` and `width`, both of type `Double`. Below the definition, write an extension to `Rectangle` that includes a function, `halved()`. This function returns a new `Rectangle` instance with half the length and half the width of the original rectangle.
 */
struct Rectangle {
    var length: Double
    var width: Double
}

extension Rectangle {
    
        //returns a rectangle with half the area (length * width)
    func halved() -> Double {
        let halved = length * width / 2
        
        return halved
    }

/*:
 Within the existing `Rectangle` extensions, add a new mutating function, `half()`, which updates the original rectangle to have half the length and half the width. Use the `halved()` function as part of the implementation for `half()`.
 */
    mutating func half() ->Any{
        return self.halved()
    }
    
}
/*:
 Create a variable `Rectangle` called `myRectangle`, and set its length to 10 and its width to 5. Create a second instance, `mySmallerRectangle`, that's the result of calling `halved()` on `myRectangle`. Then update the values of `myRectangle` by calling `half()` on itself. Print each of the instances.
 */
var myRectangle = Rectangle(length: 10, width: 5)
var mySmallerRectangle = myRectangle.halved()

    //directions are a little unclear on what specifically needs to be printed
print(myRectangle.half())
print(myRectangle)
print(mySmallerRectangle)

//: page 1 of 2  |  [Next: App Exercise - Workout Extensions](@next)
