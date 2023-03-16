//
//  main.swift
//  15656
//
//  Created by yonggeun Kim on 2023/03/16.
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let inputList = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()

let N = input[0]
let M = input[1]
var stack = [String]()
var result = ""

dfs(start: 0)

func dfs(start: Int) {
    if stack.count == M {
        result += (stack.joined(separator: " ") + "\n")
        return
    }
    
    for i in start..<inputList.count {
        stack.append(String(inputList[i]))
        dfs(start: i)
        stack.removeLast()
    }
}

print(result)
