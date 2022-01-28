import Cocoa

let array = [3, 5, -4, 8, 11, 1, -1, 6]
let targetSum = 10

// Solution:
// Keep track of elements already traversed in hash table (Dictionary).

// Time: O(n) - for the array traversal
// Space: 0(n) - for storing the hash table

func twoNumberSum(input: [Int], target: Int) -> [Int] {
    
    var alreadyTraversed: [Int : Bool] = [:]

    for element in input {
        let possibleSolution = targetSum - element
        if alreadyTraversed[possibleSolution] != nil {
            return [possibleSolution, element]
        } else {
            alreadyTraversed[element] = true
        }
    }
    return []
}

twoNumberSum(input: array, target: targetSum)


