//
//  main.swift
//  1406
//
//  Created by yonggeun Kim on 2023/02/24.
//

var stackL: [Character] = Array(readLine()!)
var stackR: [Character] = []

for _ in 1...Int(readLine()!)! {
    let input = readLine()!
    print(input)

    switch input {
    case "L":
        if !stackL.isEmpty {
            stackR.append(stackL.removeLast())
        }
    case "D":
        if !stackR.isEmpty {
            stackL.append(stackR.removeLast())
        }
    case "B":
        if !stackL.isEmpty {
            stackL.removeLast()
        }
    default:
        stackL.append(input.last!)
    }
}

print(String(stackL + stackR.reversed()))
