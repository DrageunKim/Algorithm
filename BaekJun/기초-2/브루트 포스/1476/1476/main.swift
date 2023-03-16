//
//  main.swift
//  1476
//
//  Created by yonggeun Kim on 2023/03/14.
//

let inputList = readLine()!.split(separator: " ").compactMap { Int($0) }
var count = 1

var earth = inputList[0]
var sun = inputList[1]
var moon = inputList[2]

while true {
    if earth == 1 && sun == 1 && moon == 1 {
        print(count)
        break
    }
    
    earth -= 1
    sun -= 1
    moon -= 1
    
    if earth == 0 {
        earth = 15
    }
    
    if sun == 0 {
        sun = 28
    }
    
    if moon == 0 {
        moon = 19
    }
    
    count += 1
}
