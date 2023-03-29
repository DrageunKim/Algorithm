//
//  main.swift
//  9095
//
//  Created by yonggeun Kim on 2023/03/28.
//

let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: 1000000)

dp[1] = 1
dp[2] = 2
dp[3] = 4

for _ in 1...n {
    let input = Int(readLine()!)!
    
    if input >= 4 {
        for i in 4...input {
            dp[i] = dp[i-1] + dp[i-2] + dp[i-3]
        }
    }
    
    print(dp[input])
}

/*
 [1] - 1
 [2] - 2
 [3] - 4
 [4] - 7
 [5] - 13
 [6] - 24
 [7] - 44
 [8] - 81
 [9] - 149
 [10] -
 
 */
