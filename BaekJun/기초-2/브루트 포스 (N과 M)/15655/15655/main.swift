//
//  main.swift
//  15655
//
//  Created by yonggeun Kim on 2023/03/16.
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let inputList = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()

let N = input[0]
let M = input[1]
var stack = [Int]()
var result = ""

dfs(start: 0)

func dfs(start: Int) {
    if stack.count == M {
        result += stack.map { String($0) }.joined(separator: " ")
        result += "\n"
        return
    }
    
    for i in start..<N {
        if !stack.contains(inputList[i]) {
            stack.append(inputList[i])
            dfs(start: i+1)
            stack.removeLast()
        }
    }
}

print(result)
