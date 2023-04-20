//
//  main.swift
//  1182
//
//  Created by yonggeun Kim on 2023/03/29.
//

let input = readLine()!.split(separator: " ").compactMap{ Int($0) }
let input1 = readLine()!.split(separator: " ").compactMap{ Int($0) }
let n = input[0]
let num = input[1]
var total = 0
var sum = 0
var visited = Array(repeating: false, count: n)

private func dfs(depth: Int, start: Int) {
    if sum == num && depth >= 1 {
        total += 1
    }
    
    for i in start..<n {
        if !visited[i] {
            visited[i] = true
            sum += input1[i]
            dfs(depth: depth+1, start: i)
            visited[i] = false
            sum -= input1[i]
        }
    }
}

dfs(depth: 0, start: 0)
print(total)
