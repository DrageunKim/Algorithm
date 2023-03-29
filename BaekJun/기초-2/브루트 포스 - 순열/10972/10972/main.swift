//
//  main.swift
//  10972
//
//  Created by yonggeun Kim on 2023/03/23.
//

let n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").compactMap { Int($0) }

if Array(1...n).reversed() == input {
    print("-1")
} else {
    var idx = 0
    var biggerIndex = 0
    
    for i in 0..<n {
        if i + 1 < n, input[i] < input[i + 1] {
            idx = i
            print("idx: \(idx)")
        }
    }
    
    for j in idx..<n {
        if input[idx] < input[j] {
            biggerIndex = j // 3
            print("biggerIndex: \(biggerIndex)")
        }
    }
    
    input.swapAt(idx, biggerIndex)
    print(input[...idx], input[(idx+1)...])
    input = input[...idx] + input[(idx + 1)...].sorted()
    
    print(input.map{String($0)}.joined(separator: " "))
}
