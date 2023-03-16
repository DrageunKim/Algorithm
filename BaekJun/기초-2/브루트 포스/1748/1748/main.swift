//
//  main.swift
//  1748
//
//  Created by yonggeun Kim on 2023/03/15.
//

let count = Int(readLine()!)!
var i = 1
var result = 0

while count >= i {
    result += (count-i) + 1
    i *= 10
}

print(result)
