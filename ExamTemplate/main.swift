import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
var inputs : [Int : Any] = [:]
var promptNum = 0
// Loop until valid input is received
while promptNum <= 1 {
    
    // Show the prompt
    if (promptNum == 0) {
        print("Votes", terminator: "")
    }
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        if (promptNum == 0) {
            if let inputAsInt = Int(notNilInput) {
                if inputAsInt >= 1 && inputAsInt <= 15 {
                    inputs[promptNum] = inputAsInt
                    promptNum += 1
                }
            }
        } else {
            var goodString : Bool = true
            if notNilInput.characters.count == inputs[0] as! Int {
                for c in notNilInput.characters {
                    if (c != "A" || c != "B") {
                        goodString = false
                    }
                }
                if (goodString) {
                    inputs[1] = notNilInput
                    promptNum += 1
                } else {
                    print("ERROR")
                }
            } else {
                print("ERROR")
            }
        }
        
    }
    
}

/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'process' code below....
print("replace with process logic")


/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.
//print("The input given was: \(inputToProcess)")

