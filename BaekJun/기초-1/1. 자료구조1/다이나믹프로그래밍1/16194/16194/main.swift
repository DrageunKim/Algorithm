//
//  main.swift
//  16194
//
//  Created by yonggeun Kim on 2023/03/06.
//

let num = Int(readLine()!)!
var dp = Array(repeating: 999999999, count: num + 1)
let price = readLine()!.split(separator: " ").compactMap { Int($0) }
dp[0] = 0

for i in 1...num {
    for j in 1..<i+1 {
        dp[i] = min(dp[i], dp[i-j] + price[j-1])
        print(dp)
    }
}

print(dp[num])

