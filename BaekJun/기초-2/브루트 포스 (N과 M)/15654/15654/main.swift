//
//  main.swift
//  15654
//
//  Created by yonggeun Kim on 2023/03/16.
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let inputList = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()

let N = input[0]
let M = input[1]
var stack = [Int]()
var result = ""

dfs()

func dfs() {
    if stack.count == M {
        result += stack.map { String($0) }.joined(separator: " ")
        result += "\n"
        return
    }
    
    for i in inputList {
        if !stack.contains(i) {
            stack.append(i)
            dfs()
            stack.removeLast()
        }
    }
}

print(result)
