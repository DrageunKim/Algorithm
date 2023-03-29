//
//  main.swift
//  10974
//
//  Created by yonggeun Kim on 2023/03/23.
//

let n = Int(readLine()!)!
var input = Array(1...n)
var idx = 0
var biggerIdx = 0

print(input.compactMap { String($0) }.joined(separator: " "))

while Array(1...n).reversed() != input {
    for i in 0..<n {
        if i + 1 < n, input[i] < input[i + 1] {
            idx = i
        }
    }
    
    for j in idx..<n {
        if input[idx] < input[j] {
            biggerIdx = j
        }
    }
    
    input.swapAt(idx, biggerIdx)
    input = input[...idx] + input[(idx+1)...].sorted()
    
    print(input.compactMap { String($0) }.joined(separator: " "))
}
