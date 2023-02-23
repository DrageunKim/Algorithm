import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

let result = solution(1041)

public func solution(_ N : Int) -> Int {
    if N == 1 {
        return 0
    }
    
    let binaryString: String = String(N, radix: 2)
    let binaryArr = Array(binaryString).map {String($0)}
    var count: Int = 0
    var result: Int = 0
    
    for index in 1...binaryArr.count - 1 {
        if binaryArr[index] == "0" {
            count += 1
        } else {
            if result <= count {
                result = count
            }
            count = 0
        }
    }
    return result
}

let test: Array<Int> = [1, 2, 3, 1, 2]
var result1 = 0

for index in test {
    result1 ^= index
}

print(result1)



let test1 = [1, 3, 2, 7, 3, 1]


func removeDuplicate (_ array: [Int]) -> [Int] {
    var removedArray = [Int]()
    for i in array {
        if !removedArray.contains(i) {
            removedArray.append(i)
        }
    }
    return removedArray
}

let result3 = removeDuplicate(test1)
