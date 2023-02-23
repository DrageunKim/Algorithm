import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

let test1 = solution([9, 3, 3, 3, 7, 9, 3])
//let test2 = solution([0, 0, 0], 3)
//let test3 = solution([1, 2, 3, 4], 4)
//let test4 = solution([4, 6, 0, 0, -2, 10], 15)
//let test5 = solution([5, -1000], 1)

public func solution(_ A : [Int]) -> Int {
    var temp = 0
    
    // ^= 는 XOR 연산으로 중복되는 값을 제거해줌
    for item in A {
        temp ^= item
    }
    
    return temp
}

/* 1차 코드 */
//public func solution(_ A : [Int]) -> Int {
//    var inputList: [Int] = A
//    var checkList: [Int] = []
//    var resultList: [Int] = []
//
//    for index in 0...inputList.count - 1 {
//        if !checkList.contains(inputList[index]) {
//            checkList.append(inputList[index])
//        } else if checkList.contains(inputList[index]) {
//            for pair in 0...checkList.count - 1 {
//                if inputList[index] == checkList[pair] {
//                    checkList[pair] = 0
//                }
//            }
//        }
//        print(checkList)
//    }
//
//    for index in checkList {
//        if index != 0 {
//            resultList.append(index)
//        }
//    }
//
//    return resultList.first!
//}

/* 2차 코드 */
//public func solution(_ A : [Int]) -> Int {
//    var inputList: [Int] = A
//    let checkSet: Set<Int> = Set(A)
//    var checkList: [Int] = Array(checkSet)
//    var count: Int = 0
//
//    for index in 0...checkList.count - 1 {
//        print(inputList.filter{ $0 == checkList[index] })
//        if count == 1 {
//            return checkList[index]
//        }
//        count = 0
//    }
//
//    return 0
//}
