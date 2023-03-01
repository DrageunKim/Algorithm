//
//  main.swift
//  1874
//
//  Created by yonggeun Kim on 2023/02/23.
//

import Foundation

let count = Int(readLine()!)!
var symbolList: [String] = []
var stack: [Int] = []
var num = 1

for _ in 1...count {
    let input = Int(readLine()!)!
    
    while num <= input {
        stack.append(num)
        symbolList.append("+")
        num += 1
    }
    
    if stack.last == input {
        stack.removeLast()
        symbolList.append("-")
    } else {
        print("NO")
        exit(0)
    }
}

for symbol in symbolList {
    print(symbol)
}
