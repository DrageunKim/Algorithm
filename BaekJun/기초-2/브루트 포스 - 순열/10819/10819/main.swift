//
//  main.swift
//  10819
//
//  Created by yonggeun Kim on 2023/03/23.
//


let n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").compactMap { Int($0) }
let test = input.sorted()
var idx = 0
var smallerIdx = 0
var output = [Int]()
var sum = 0

input = input.sorted(by: >)
sum = test(list: input)

while test != input {
    for i in 0..<n {
        if i + 1 < n, input[i] > input[i+1] {
            idx = i
        }
    }
    
    for j in idx..<n {
        if input[idx] > input[j] {
            smallerIdx = j
        }
    }
    
    input.swapAt(idx, smallerIdx)
    input = input[...idx] + input[(idx+1)...].sorted(by: >)
    
    if sum < test(list: input) {
        sum = test(list: input)
    }
}

print(sum)

func test(list: [Int]) -> Int {
    var sum = 0
    
    for i in 0..<list.count {
        if i + 1 < list.count {
            sum += abs(list[i] - list[i+1])
        }
    }
    
    return sum
}
