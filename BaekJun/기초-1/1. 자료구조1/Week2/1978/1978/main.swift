//
//  main.swift
//  1978
//
//  Created by yonggeun Kim on 2023/02/27.
//

let count = Int(readLine()!)!
let input = readLine()!.split(separator: " ").compactMap { Int($0) }
var list: [Int] = []
var num = 0
var sum = 0

for index in 0..<count {
    num = input[index] - 1
    
    if input[index] == 1 {
        continue
    }
    
    while num != 1 {
        if input[index] % num == 0 {
            list.append(num)
        }
           
        num -= 1
    }
    
    if list.count == 0 {
        sum += 1
    }
    
    list.removeAll()
}

print(sum)
