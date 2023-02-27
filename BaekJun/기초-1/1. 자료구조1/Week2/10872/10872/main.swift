//
//  main.swift
//  10872
//
//  Created by yonggeun Kim on 2023/02/27.
//

let input = Int(readLine()!)!
var sum = 1

if input < 1 {
    print(sum)
} else {
    for index in 1...input {
        sum = sum * index
    }
    
    print(sum)
}
