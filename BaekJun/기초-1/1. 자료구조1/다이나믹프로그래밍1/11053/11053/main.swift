//
//  main.swift
//  11053
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

print(dp.max()!)

/*
 2
 3
 5
 7
 11
 13
 17
 */
