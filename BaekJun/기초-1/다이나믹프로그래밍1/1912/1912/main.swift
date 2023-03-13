//
//  main.swift
//  1912
//
//  Created by yonggeun Kim on 2023/03/07.
//

let num = Int(readLine()!)!
let input = readLine()!.split(separator: " ").compactMap { Int($0) }
var dp = Array(repeating: -1001, count: num + 1)

dp[0] = input[0]

for i in 1..<num {
    dp[i] = input[i]
    dp[i] = max(dp[i], dp[i-1] + input[i])
}
print(dp)
print(dp.max()!)
