//
//  main.swift
//  1934
//
//  Created by yonggeun Kim on 2023/02/27.
//

for _ in 1...Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let a = input[0]
    let b = input[1]
    var num = a
    var plus = 1
    
    while num % b != 0 {
        num = a * plus
        plus += 1
    }
    
    print(num)
}
