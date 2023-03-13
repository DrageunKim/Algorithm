//
//  main.swift
//  9012
//
//  Created by yonggeun Kim on 2023/02/23.
//

import Foundation

let count = Int(readLine()!)!

for _ in 0..<count {
    let inputList = readLine()!
    var queue = [String]()
    
    for input in inputList {
        if input == "(" {
            queue.append(String(input))
        } else if input == ")" {
            if !queue.isEmpty &&
                queue.contains("(") {
                queue.removeLast()
            } else {
                queue.append("FAIL")
            }
        }
    }

    if queue.contains("FAIL") ||
        queue.count > 0 {
        print("NO")
    } else {
        print("YES")
    }
}
