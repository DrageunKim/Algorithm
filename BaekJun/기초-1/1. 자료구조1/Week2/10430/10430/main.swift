//
//  main.swift
//  10430
//
//  Created by yonggeun Kim on 2023/02/27.
//

let inputList = readLine()!.split(separator: " ")
let a = Int(inputList[0])!
let b = Int(inputList[1])!
let c = Int(inputList[2])!

print((a+b)%c)
print((a%c+b%c)%c)
print((a*b)%c)
print((a%c*b%c)%c)
