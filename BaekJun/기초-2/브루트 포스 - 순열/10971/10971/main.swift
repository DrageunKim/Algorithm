//
//  main.swift
//  10971
//
//  Created by yonggeun Kim on 2023/03/24.
//

let n = Int(readLine()!)!
var input = [[Int]]()

for _ in 0..<n {
    input.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

var depth = 0
var result = Int.max
var sum = 0

var visited: [Bool] = Array(repeating: false, count: n)

func dfs(_ depth: Int, _ now: Int, _ start: Int) {
    if depth == n && now == start {
        result = min(result, sum)
        print("result: \(result)")
        return
    }
    for i in 0..<n {
        if !visited[i] && input[now][i] > 0 {
            visited[i] = true
            sum += input[now][i]
            if sum <= result {
                dfs(depth + 1, i, start)
            }
            visited[i] = false
            sum -= input[now][i]
        }
    }
}

dfs(0, 0, 0)

print(result)

/*
 0 1 10
 1 0 5
 0 2 15
 2 3 12
 0 3 20
 3 2 9
 1 2 9
 2 0 6
 0 3 20
 2 3 12
 3 0 8
 1 3 10
 3 0 8
 0 2 15
 3 2 9
 2 0 6
 0 2 15
 2 0 6
 0 1 10
 1 3 10
 0 3 20
 3 1 8
 2 1 13
 1 0 5
 0 3 20
 1 3 10
 3 0 8
 2 3 12
 3 0 8
 0 1 10
 3 1 8
 1 0 5
 0 3 20
 3 0 8
 0 1 10
 1 2 9
 0 2 15
 2 1 13
 3 1 8
 1 0 5
 0 2 15
 1 2 9
 2 0 6
 3 2 9
 2 0 6
 0 1 10
 2 1 13
 1 0 5
 */
