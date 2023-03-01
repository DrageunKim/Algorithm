//
//  main.swift
//  10845
//
//  Created by yonggeun Kim on 2023/02/24.
//

//import Foundation

var queue: [String] = []

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ")
    
    switch input[0] {
    case "push":
        queue.append(String(input.last!))
    case "pop":
        if queue.count > 0 {
            print(queue.first!)
            queue.removeFirst()
        } else {
            print(-1)
        }
    case "size":
        print(queue.count)
    case "empty":
        if queue.isEmpty {
            print(1)
        } else {
            print(0)
        }
    case "front":
        if queue.count > 0 {
            print(queue.first!)
        } else {
            print(-1)
        }
    default:
        if queue.count > 0 {
            print(queue.last!)
        } else {
            print(-1)
        }
    }
}
