//
//  main.swift
//  14002
//
//  Created by yonggeun Kim on 2023/03/07.
//

let num = Int(readLine()!)!
let input = readLine()!.split(separator: " ").compactMap { Int($0) }
var dp: [Int] = []

for i in 0..<num {
    dp.append(1)
    for j in 0...i {
        if input[j] < input[i] {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

var maxNum = dp.max()!
var count = 0
var output: [Int] = []

print(dp.max()!)

for i in 0..<dp.count {
    if dp[i] == dp.max()! {
        count = i
    }
}

while count >= 0 {
    if dp[count] == maxNum {
        output.append(input[count])
        maxNum -= 1
    }
    
    count -= 1
}

output = output.sorted()

for i in 0..<output.count {
    print(output[i], terminator: " ")
}
