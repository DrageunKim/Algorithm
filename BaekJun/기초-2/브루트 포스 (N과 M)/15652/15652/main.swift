//
//  main.swift
//  15652
//
//  Created by yonggeun Kim on 2023/03/16.
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let N = input[0]
let M = input[1]
var stack = [Int]()
var result = ""

dfs(start: 1)

func dfs(start: Int) {
    if stack.count == M {
        result += stack.map { String($0) }.joined(separator: " ")
        result += "\n"
        return
    }
    
    for i in start..<N+1 {
        stack.append(i)
        dfs(start: i)
        stack.removeLast()
    }
}

print(result)
