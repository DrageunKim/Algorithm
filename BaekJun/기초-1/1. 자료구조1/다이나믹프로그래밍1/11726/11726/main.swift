//
//  main.swift
//  11726
//
//  Created by yonggeun Kim on 2023/03/01.
//

let input = Int(readLine()!)!
var dp = Array(repeating: 0, count: input + 1)

if input < 3 {
    print(input)
} else {
    dp[1] = 1
    dp[2] = 2
    
    for i in 3...input {
        dp[i] = (dp[i-1] + dp[i-2]) % 10007
    }
    
    print(dp[input])
}

/*
 1 = 1
 2 = 2
 3 = 3
 4 = 5
 5 = 8
 6 = 13
 7 = 21
 8 = 34
 9 = 55
 */
