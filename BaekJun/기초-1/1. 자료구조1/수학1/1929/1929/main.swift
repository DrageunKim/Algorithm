//
//  main.swift
//  1929
//
//  Created by yonggeun Kim on 2023/02/27.
//

let count = readLine()!.split(separator: " ").compactMap { Int($0) }
var array = Array(repeating: 0, count: count[1] + 1)

for index in 2...count[1] {
    array[index] = index
}

for i in 2...count[1] {
    if array[i] == 0 { continue }
    
    for j in stride(from: i + i, through: count[1], by: i) {
        array[j] = 0
    }
}

for index in count[0]...count[1] {
    if array[index] != 0 {
        print(index)
    }
}

