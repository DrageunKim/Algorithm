//
//  main.swift
//  6588
//
//  Created by yonggeun Kim on 2023/02/27.
//

let maxCount = 1000000
var array = Array(repeating: true, count: maxCount + 1)

for i in 2...maxCount {
    if array[i] == false { continue }
    
    for j in stride(from: i + i, through: maxCount, by: i) {
        array[j] = false
    }
}

while true {
    let input = Int(readLine()!)!
    
    if input == 0 { break }
    
    for i in 2...input {
        if array[i] {
            let test = input - i
            if array[test] {
                print("\(input) = \(i) + \(test)")
                break
            }
        }
    }
}
