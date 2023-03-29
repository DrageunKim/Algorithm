//
//  main.swift
//  6603
//
//  Created by yonggeun Kim on 2023/03/24.
//

var input: [Int] = []
var sum = 1
var visited = Array(repeating: false, count: 13)
var result: [Int] = []

while true{
    input = readLine()!.split(separator: " ").compactMap { Int($0) }
    
    if input[0] == 0 {
        break
    } else {
        input.removeFirst()
        dfs(0, 0)
        print("")
    }
}

func dfs(_ depth: Int, _ start: Int){
    if depth == 6 {
        print(result.map{String($0)}.joined(separator: " "))
        return
    }
    for i in start..<input.count{
        if !visited[i] {
            visited[i] = true
            result.append(input[i])
            dfs(depth + 1, i)
            result.removeLast()
            visited[i] = false
        }
    }
}
