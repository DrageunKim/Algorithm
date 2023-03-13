//
//  main.swift
//  1699
//
//  Created by yonggeun Kim on 2023/03/07.
//

var num = Int(readLine()!)!
var dp = Array(repeating: 0, count: num + 1)
var sum = 0

for i in 1...num {
    dp[i] = i
    
    for j in 1...i {
        print(dp, i, j)
        if i < j*j {
            break
        }
        
        if dp[i] > dp[i-(j*j)] {
            dp[i] = dp[i-(j*j)] + 1
        }
    }
}

print(dp[num])
