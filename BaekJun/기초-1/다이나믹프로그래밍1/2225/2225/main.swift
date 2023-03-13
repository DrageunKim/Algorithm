//
//  main.swift
//  2225
//
//  Created by yonggeun Kim on 2023/03/07.
//

let inputList = readLine()!.split(separator: " ").compactMap { Int($0) }
let num = inputList.first!
let input = inputList.last!
var dp = Array(repeating: Array(repeating: 0, count: num+1), count: input+1)

for i in 1..<input+1 {
    for n in 0..<num+1 {
        if n == 0 {
            dp[i][0] = 1
        } else {
            dp[i][n] = (dp[i-1][n]+dp[i][n-1]) % 1000000000
        }
    }
}

print(dp[input][num])

/*
 [20]
 10 10
 */
