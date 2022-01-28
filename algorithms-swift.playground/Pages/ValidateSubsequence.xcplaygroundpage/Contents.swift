import Cocoa

// Given two non-empty arrays of integers, write a function that determines
// whether the second array is a subsequence of the first array.

let mainArray = [5, 1, 22, 25, 6, -1, 8, 10]
let sequenceArray = [1, 6, -1, 10]
let expectedResult = true

func isValidSubsequence(array: [Int], sequence: [Int]) -> Bool {
    
    // If the number of elements in the sequence is greater than the
    // number of elements in the array, there is no need to do any work.
    // We know the sequence cannot be in the array in this edge case.
    if sequence.count > array.count {
        return false
    }
    
    // Initialize two index pointers to track positions in the array and sequence
    var arrayIndex = 0
    var sequenceIndex = 0
    
    while arrayIndex < array.count && sequenceIndex < sequence.count {
        if array[arrayIndex] == sequence[sequenceIndex] {
            sequenceIndex += 1
        }
        arrayIndex += 1
    }
    
    // Return True if we've traversed the entire sequence
    return sequenceIndex == sequence.count
}

// Test
let result = isValidSubsequence(array: mainArray, sequence: sequenceArray)
print("Result: \(result) --- Expected Result: \(expectedResult)")

/*
 
 Show your work:
 
 [5, 1, 22, 25, 6, -1, 8, 10]
 [1, 6, -1, 10]
 
 Pass 1: arrayIndex 0 = 5  && sequenceIndex 0 at 1  == false | + arrayIndex
 Pass 2: arrayIndex 1 = 1  && sequenceIndex 0 at 1  == true  | + both
 Pass 3: arrayIndex 2 = 22 && sequenceIndex 1 at 6  == false | + arrayIndex
 Pass 4: arrayIndex 3 = 25 && sequenceIndex 1 at 6  == false | + arrayIndex
 Pass 5: arrayIndex 4 = 6  && sequenceIndex 1 at 6  == true  | + both
 Pass 6: arrayIndex 5 = -1 && sequenceIndex 2 at -1 == true  | + both
 Pass 7: arrayIndex 6 = 8  && sequenceIndex 3 at 10 == false | + arrayIndex
 Pass 8: arrayIndex 7 = 10 && sequenceIndex 3 at 10 == true  | + both

 ------: break out of loop: sequenceIndex is not less than sequence count
 ------: Return True because sequence was traveresed entirely by tracking its index
 
 */
