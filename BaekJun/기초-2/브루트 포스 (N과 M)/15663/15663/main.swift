//
//  main.swift
//  15663
//
//  Created by yonggeun Kim on 2023/03/16.
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let inputList = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()
let N = input[0]
let M = input[1]
var stack = [String]()
var visited = Array(repeating: false, count: 10)
var result = ""

dfs(depth: 0, start: 0)

func dfs(depth: Int, start: Int) {
    var beforeNum = 0
    
    if stack.count == M {
        result += (stack.joined(separator: " ") + "\n")
        return
    }
    
    for i in start..<inputList.count {
        if !visited[i] && beforeNum != inputList[i] {
            stack.append(String(inputList[i]))
            visited[i] = true
            beforeNum = inputList[i]
            dfs(depth: depth + 1, start: i+1)
            visited[i] = false
            stack.removeLast()
        }
    }
}

print(result)
