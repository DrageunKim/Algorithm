//
//  main.swift
//  15649
//
//  Created by yonggeun Kim on 2023/03/16.
//

let inputList = readLine()!.split(separator: " ").compactMap { Int($0) }

let N = inputList[0]
let M = inputList[1]

var stack = [Int]()

dfs()

func dfs() {
    if stack.count == M {
        print(stack.map { String($0) }.joined(separator: " "))
        return
    }
    
    for i in 1...N {
        if !stack.contains(i) {
            stack.append(i)
            dfs()
            stack.removeLast()
        }
    }
}
