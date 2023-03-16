//
//  main.swift
//  15651
//
//  Created by yonggeun Kim on 2023/03/16.
//

let inputList = readLine()!.split(separator: " ").compactMap { Int($0) }

let N = inputList[0]
let M = inputList[1]
var stack = [Int]()
var result = String()
dfs()

func dfs() {
    if stack.count == M {
        result += (stack.map { String($0) }.joined(separator: " ") + "\n")
        return
    }
    
    for i in 1..<N+1 {
        stack.append(i)
        dfs()
        stack.removeLast()
    }
}

print(result)
