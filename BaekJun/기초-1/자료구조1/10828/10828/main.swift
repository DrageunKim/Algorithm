//
//  main.swift
//  10828
//
//  Created by yonggeun Kim on 2023/02/21.
//

import Foundation

let N = Int(readLine()!)!
var stack: [Int] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    let command = input.first!
    let value = input.last!
    
    switch command {
    case "push":
        stack.append(Int(value)!)
    case "pop":
        if stack.isEmpty {
            print(-1)
        } else {
            print(stack.removeLast())
        }
    case "size":
        print(stack.count)
    case "empty":
        if stack.isEmpty {
            print(1)
        } else {
            print(0)
        }
    case "top":
        if let last = stack.last {
            print(last)
        } else {
            print(-1)
        }
    default:
        break
    }
}

struct Stack {
    var stack: [Int] = []
    
    mutating func push(_ number: Int) {
        stack.append(number)
    }
    
    mutating func pop() -> Int {
        return stack.removeLast()
    }
    
    func size() -> Int {
        return stack.count
    }
    
    func empty() -> Bool {
        return stack.isEmpty
    }
    
    func top() -> Int {
        if let last = stack.last {
            return last
        }
        
        return 0
    }
}
