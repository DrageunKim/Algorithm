//
//  main.swift
//  9093
//
//  Created by yonggeun Kim on 2023/02/23.
//

let count = Int(readLine()!)!

for _ in 0..<count {
    let inputList = readLine()!.split(separator: " ")
    var outputList: [String] = []
    
    for input in inputList {
        let reversedIndex = input.reversed()
        let reversedString = String(reversedIndex)
        
        outputList.append(reversedString)
    }
    
    print(outputList.joined(separator: " "))
}
