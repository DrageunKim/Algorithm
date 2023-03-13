//
//  main.swift
//  11052
//
//  Created by yonggeun Kim on 2023/03/06.
//

let num = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: num + 1)
let price = readLine()!.split(separator: " ").compactMap { Int($0) }

for i in 1...num {
    for j in 1..<i+1 {
        dp[i] = max(dp[i], dp[i-j] + price[j-1])
        print("max: \(dp[i]), i: \(i), j: \(j)")
    }
}

print(dp[num])
