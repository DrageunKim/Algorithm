//
//  main.swift
//  1463
//
//  Created by yonggeun Kim on 2023/03/01.
//

var input = Int(readLine()!)!
var dp = Array(repeating: 0, count: input + 1)

if input == 1 {
    print(0)
} else {
    for i in 2...input {
        dp[i] = dp[i - 1] + 1
        
        if i % 2 == 0 {
            if dp[i] >= dp[i / 2] + 1 {
                dp[i] = dp[i / 2] + 1
            }
        }
        if i % 3 == 0 {
            if dp[i] >= dp[i / 3] + 1 {
                dp[i] = dp[i / 3] + 1
            }
        }
    }
    
    print(dp[input])
}

/*
1 1 = 0
2 1 = 1
3 1 = 1
4 2 1 = 2
5 4 2 1 = 3
6 2 1 = 2
7 6 2 1 = 3
8 4 2 1 = 3
9 3 1 = 2
10 9 3 1 = 3
11 10 9 3 1 = 4
11 10 5 4 2 1 = 5
*/
