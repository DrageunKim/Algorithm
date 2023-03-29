//
//  main.swift
//  10973
//
//  Created by yonggeun Kim on 2023/03/23.
//

let n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").compactMap { Int($0) }

if Array(1...n) == input {
    print(-1)
} else {
    var idx = 0
    var smallerIndex = 0
    
    for i in 0..<n  {
        if i + 1 < n, input[i] > input[i+1] {
            idx = i
        }
    }
    
    for j in idx..<n {
        if input[idx] > input[j] {
            smallerIndex = j
        }
    }
    
    input.swapAt(idx, smallerIndex)
    input = input[...idx] + input[(idx+1)...].sorted(by: >)
    
    print(input.compactMap { String($0) }.joined(separator: " "))
}

