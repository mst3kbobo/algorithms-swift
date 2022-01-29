import Foundation

/// Get the Nth number from the Fibonacci Sequence.
/// For example, the 9th (N) number in the sequence is 21.

print("The 1st number in the Fibonacci Sequence is \(nthFibonacci(1)).");
print("The 2nd number in the Fibonacci Sequence is \(nthFibonacci(2)).");
print("The 9th number in the Fibonacci Sequence is \(nthFibonacci(9)).");
print("The 12th number in the Fibonacci Sequence is \(nthFibonacci(12)).");

/// Find the Nth number from the Fibonacci Sequence using an iterative approach.
/// Complexity Analysis:
/// - Time: O(n) for the loop until the requested number
/// - Space: O(1)
/// - Parameter number: Nth number in the sequence to find
/// - Returns: value of the integer at Nth position in the sequence.
func nthFibonacci(_ number: Int) -> Int {
    
    var lastTwo = [0, 1] // Tracking array - Populated with first two numbers in Fib sequence
    var counter = 3 // The next number in the sequence to calculate
    
    // Loop while the counter is less than or equal to the target number passed to the method.
    // Set the Tracking array to the next numbers and increment the counter.
    while counter <= number {
        let nextFib = lastTwo[0] + lastTwo[1]
        lastTwo[0] = lastTwo[1]
        lastTwo[1] = nextFib
        counter += 1
    }
    
    // Edge case if the first number in the sequence is requested.
    return number > 1 ? lastTwo[1] : lastTwo[0]
}
