import Cocoa

// Take an array and target. If any two distinct numbers sum the target, return them.

var array: Array<Int> = [6, 10, -3, 8, 2, 16, -2, -8, 3]
let target = 12
let expectedResult = [10, 2]

let test = twoNumberSearch(&array, for: target)

print("Expected Result: \(expectedResult), Actual Result: \(test)")

func twoNumberSearch(_ array: inout Array<Int>, for target: Int) -> Array<Int> {
    
    array.sort()
    
    var left = 0
    var right = array.count - 1
    
    while left < right {
        
        let potentialMatch = array[left] + array[right]
        
        if potentialMatch == target {
            return [array[left], array[right]]
        } else if potentialMatch < target {
            left += 1
        } else {
            right -= 1
        }
    }
    
    return []
}

