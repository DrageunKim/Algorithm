//
//  main.swift
//  2193
//
//  Created by yonggeun Kim on 2023/03/06.
//

let num = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 2), count: num+1)

if num == 1 {
    print(1)
} else {
    dp[2] = [1, 0]
    
    if num > 2 {
        for i in 3...num {
            dp[i][0] = dp[i-1][0] + dp[i-1][1]
            dp[i][1] = dp[i-1][0]
        }
    }
    
    print(dp[num][0] + dp[num][1])
}


/*
 [1]
 1
 [2]
 10
 [3]
 100
 101
 [4]
 1000
 1001
 1010
 [5]
 10000
 10001
 10010
 10100
 10101
 */
