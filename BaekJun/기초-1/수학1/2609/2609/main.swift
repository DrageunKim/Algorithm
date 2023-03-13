//
//  main.swift
//  2609
//
//  Created by yonggeun Kim on 2023/02/27.
//

let input = readLine()!.split(separator: " ").compactMap{ Int($0) }
let a = input[0]
let b = input[1]
var test = a
var num = 1

while test % b != 0 {
    test = a * num
    num += 1
}

print((a*b) / test)
print(test)
