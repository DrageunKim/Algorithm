//
//  main.swift
//  15990
//
//  Created by yonggeun Kim on 2023/03/06.
//

import Foundation

let num = Int(readLine()!)!
var dp = [[Int]](repeating: Array(repeating: 0, count: 4), count: 100001)

dp[1] = [0, 1, 0, 0]
dp[2] = [0, 0, 1, 0]
dp[3] = [0, 1, 1, 1]

for i in 4...100000 {
    dp[i][1] = dp[i-1][2] % 1000000009 + dp[i-1][3] % 1000000009
    dp[i][2] = dp[i-2][1] % 1000000009 + dp[i-2][3] % 1000000009
    dp[i][3] = dp[i-3][1] % 1000000009 + dp[i-3][2] % 1000000009
}

for _ in 1...num {
    let j = Int(readLine()!)!
    print((dp[j][1] + dp[j][2] + dp[j][3]) % 1000000009)
}
