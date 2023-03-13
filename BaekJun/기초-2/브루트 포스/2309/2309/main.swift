//
//  main.swift
//  2309
//
//  Created by yonggeun Kim on 2023/03/13.
//

var sum = 0
var key: [Int] = []

for _ in 1...9 {
    let input = Int(readLine()!)!
    key.append(input)
    sum += input
}

key.sort()
test()

func test() {
    for i in 0..<9 {
        for j in i+1..<9 {
            if sum - key[i] - key[j] - 100 == 0 {
                for k in 0..<9 {
                    if k != i, k != j {
                        print(key[k])
                    }
                }
                return
            }
        }
    }
}
