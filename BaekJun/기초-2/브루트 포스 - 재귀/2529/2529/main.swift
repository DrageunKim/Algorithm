//
//  main.swift
//  2529
//
//  Created by yonggeun Kim on 2023/03/29.
//

let n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").compactMap{ String($0) }
var output: [String] = []
var resultList: [Int] = []
var visited = Array(repeating: false, count: 10)

private func dfs(depth: Int, start: Int)  {
    if depth == n + 1 {
        output.append(resultList.compactMap { String($0) }.joined())
        return
    }
    
    for i in 0...9 {
        if !visited[i] {
            if depth > 0 {
                if start <= i && input[depth - 1] == ">" {
                    continue
                } else if start >= i && input[depth - 1] == "<" {
                    continue
                }
            }
            
            visited[i] = true
            resultList.append(i)
            
            dfs(depth: depth+1, start: i)
            
            visited[i] = false
            resultList.removeLast()
        }
    }
}

dfs(depth: 0, start: 0)

print(output)
