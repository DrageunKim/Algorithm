//
//  main.swift
//  1158
//
//  Created by yonggeun Kim on 2023/02/24.
//

//import Foundation

let input = readLine()?.split(separator: " ")
var queue: [Int] = []
var output: [Int] = []
var count = Int(input?.last ?? "")!

for index in 1...Int(input?.first ?? "")! {
    queue.append(index)
}

while !queue.isEmpty {
    if count <= queue.count {
        output.append(queue[count - 1])
        queue.remove(at: count - 1)
        count += Int(input?.last ?? "")! - 1
    } else {
        count -= queue.count
    }
}

print("<" + output.map{ String($0) }.joined(separator: ", ") + ">")
