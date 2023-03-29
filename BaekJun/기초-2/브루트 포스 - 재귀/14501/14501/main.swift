//
//  main.swift
//  14501
//
//  Created by yonggeun Kim on 2023/03/28.
//

let n = Int(readLine()!)!
var tp: [[Int]] = []
var dp = Array(repeating: 0, count: 100)

for _ in 0..<n {
    tp.append(readLine()!.split(separator: " ").compactMap { Int(String($0)) })
}

for i in 0..<n {
    if dp[i] > dp[i+1] {
        dp[i+1] = dp[i]
    }

    if dp[i+tp[i][0]] < dp[i] + tp[i][1] {
        dp[i+tp[i][0]] = dp[i] + tp[i][1]
    }
}

print(dp[n])
