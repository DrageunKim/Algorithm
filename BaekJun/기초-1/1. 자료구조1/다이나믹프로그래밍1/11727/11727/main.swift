//
//  main.swift
//  11727
//
//  Created by yonggeun Kim on 2023/03/01.
//

let input = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: input + 1)

if input == 1 {
    print(1)
} else if input == 2 {
    print(3)
} else {
    dp[1] = 1
    dp[2] = 3
    
    for i in 3...input {
        if i % 2 == 0 {
            dp[i] = ((dp[i-1] * 2) + 1) % 10007
        } else {
            dp[i] = ((dp[i-1] * 2) - 1) % 10007
        }
    }
    
    print(dp[input])
}

/*
 1 = 1
 2 = 3
 3 = 5
 4 = 11
 5 = 21
 6 = 43
 7 = 85
 8 = 171
 */
