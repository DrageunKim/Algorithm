//
//  main.swift
//  1107
//
//  Created by yonggeun Kim on 2023/03/14.
//

import Foundation

solution()

private func solution() {
    let n = Int(readLine()!)!
    let m = Int(readLine()!)!
    var errorBtn = [Int]()
    
    if m != 0 {
        errorBtn = readLine()!.split(separator: " ").compactMap { Int($0) }
    }
    
    var minCnt = abs(n - 100)
    
    for i in 0...1000000 {
        let pressNumButton = pressCloseNumber(n: i, errorBtn: errorBtn)
        
        if pressNumButton > 0 {
            let pressNumAndPlusMinus = abs(n - i)
            
            minCnt = min(minCnt, pressNumAndPlusMinus + pressNumButton)
        }
    }
    
    print(minCnt)
}

private func pressCloseNumber(n: Int, errorBtn: [Int]) -> Int {
    var n = n
    
    if n == 0 {
        if errorBtn.contains(n) {
            return 0
        } else {
            return 1
        }
    }
    
    var buttonPressCnt = 0
    while n > 0 {
        if errorBtn.contains(n % 10) {
            return 0
        }
        
        n /= 10
        buttonPressCnt += 1
    }
    
    return buttonPressCnt
}
