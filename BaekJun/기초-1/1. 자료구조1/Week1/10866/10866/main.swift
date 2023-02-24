//
//  main.swift
//  10866
//
//  Created by yonggeun Kim on 2023/02/24.
//

import Foundation

var deck: [Int] = []

for _ in 0..<Int(readLine()!)! {
    let input = readLine()?.split(separator: " ")
    
    switch input?.first {
    case "push_front":
        deck.reverse()
        deck.append(Int(input?.last ?? "")!)
        deck.reverse()
    case "push_back":
        deck.append(Int(input?.last ?? "")!)
    case "pop_front":
        if deck.isEmpty {
            print(-1)
        } else {
            print(deck.removeFirst())
        }
    case "pop_back":
        if deck.isEmpty {
            print(-1)
        } else {
            print(deck.removeLast())
        }
    case "size":
        print(deck.count)
    case "empty":
        if deck.isEmpty {
            print(1)
        } else {
            print(0)
        }
    case "front":
        if deck.isEmpty {
            print(-1)
        } else {
            print(deck.first!)
        }
    default:
        if deck.isEmpty {
            print(-1)
        } else {
            print(deck.last!)
        }
    }
}
