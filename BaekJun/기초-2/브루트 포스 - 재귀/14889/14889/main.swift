//
//  main.swift
//  14889
//
//  Created by yonggeun Kim on 2023/03/28.
//

let n = Int(readLine()!)!
var s: [[Int]] = []
var visited = Array(repeating: false, count: n)
var minResult = 999999

for _ in 1...n {
    s.append(readLine()!.split(separator: " ").compactMap{ Int($0) })
}

private func dfs(depth: Int, start: Int) {
    if depth == n/2 {
        var teamStart = 0
        var teamLink = 0
        
        for i in 0..<n {
            for j in 0..<n {
                if visited[i], visited[j] {
                    teamStart += s[i][j]
                }
                
                if !visited[i], !visited[j] {
                    teamLink += s[i][j]
                }
            }
        }
        
        minResult = min(minResult, abs(teamLink - teamStart))
        return
    }
    
    for i in start..<n {
        if !visited[i] {
            visited[i] = true
            dfs(depth: depth + 1, start: i)
            visited[i] = false
        }
    }
}

dfs(depth: 0, start: 0)
print(minResult)
