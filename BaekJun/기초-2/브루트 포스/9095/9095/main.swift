//
//  main.swift
//  9095
//
//  Created by yonggeun Kim on 2023/03/15.
//


for _ in 1...Int(readLine()!)! {
    let input = Int(readLine()!)!
    var dp = Array(repeating: 0, count: input + 1)
    if input == 1 {
        print(1)
    } else if input == 2{
        print(2)
    } else if input == 3 {
        print(4)
    } else {
        dp[1] = 1
        dp[2] = 2
        dp[3] = 4
        for i in 4...input {
            dp[i] = dp[i-1] + dp[i-2] + dp[i-3]
        }
        print(dp[input])
    }
}
