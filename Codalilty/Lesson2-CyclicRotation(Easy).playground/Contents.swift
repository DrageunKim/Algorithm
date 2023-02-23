import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

let test1 = solution([], 3)
let test2 = solution([0, 0, 0], 3)
let test3 = solution([1, 2, 3, 4], 4)
let test4 = solution([4, 6, 0, 0, -2, 10], 15)
let test5 = solution([5, -1000], 1)

public func solution(_ A : [Int], _ K : Int) -> [Int] {
    var number: Int = 0
    var numberList: [Int] = []
    var inputList: [Int] = A

    if K < 1 || A == [] {
        return A
    }
    
    for _ in 1...K {
        numberList = []
        number = inputList.last!
        inputList.removeLast()
        numberList.append(number)
        
        for index in inputList {
            numberList.append(index)
        }
        
        inputList = numberList
    }
    
    return numberList
}
