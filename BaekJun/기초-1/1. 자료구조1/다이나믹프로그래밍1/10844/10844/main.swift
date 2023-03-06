//
//  main.swift
//  10844
//
//  Created by yonggeun Kim on 2023/03/06.
//

let num = Int(readLine()!)!
var dp = [[Int]](repeating: Array(repeating: 0, count: 10), count: num+1)
var sum = 0

for i in 0...9 {
    dp[1][i] = 1
}

if num > 1 {
    for i in 2...num {
        for j in 0...9 {
            if j == 0 {
                dp[i][0] = dp[i-1][1] % 1000000000
            } else if j == 9 {
                dp[i][9] = dp[i-1][8] % 1000000000
            } else {
                dp[i][j] = (dp[i-1][j-1] + dp [i-1][j+1]) % 1000000000
            }
        }
    }
}

for i in 1...9 {
    sum += ((dp[num][i]) % 1000000000)
}


print(sum%1000000000)

/*
 [1]
 1, 2, 3, 4, 5, 6, 7, 8, 9
 [2]
    10,
 12,21,
 23,32,
 34,43,
 45,54,
 56,65,
 67,76,
 78,87,
 89,98,
 */

