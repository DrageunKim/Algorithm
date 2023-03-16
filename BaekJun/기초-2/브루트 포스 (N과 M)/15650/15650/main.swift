//
//  main.swift
//  15650
//
//  Created by yonggeun Kim on 2023/03/16.
//

let inputList = readLine()!.split(separator: " ").compactMap { Int($0) }

let N = inputList[0]
let M = inputList[1]

var stack = [Int]()

dfs(start: 1)

func dfs(start: Int) {
    if stack.count == M {
        print(stack.map { String($0) }.joined(separator: " "))
        return
    }
    
    for i in start..<N+1 {
        if !stack.contains(i) {
            stack.append(i)
            dfs(start: i+1)
            stack.removeLast()
        }
    }
}
