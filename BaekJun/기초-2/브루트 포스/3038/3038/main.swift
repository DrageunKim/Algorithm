//
//  main.swift
//  3038
//
//  Created by yonggeun Kim on 2023/03/13.
//

import Foundation

solution()

func solution() {
    var result = [Int]()
    let count = Int(readLine()!)!
    var inputArray = [Array<Character>]()
    
    for _ in 1...count {
        inputArray.append(Array(readLine()!))
    }
    
    for i in 0..<count {
        for j in 0..<count-1 {
            
            inputArray[i].swapAt(j, j+1)
            result.append(colCount(n: count, candy: inputArray))
            result.append(rowCount(n: count, candy: inputArray))
            inputArray[i].swapAt(j, j+1)
            
            var temp = inputArray[j][i]
            inputArray[j][i] = inputArray[j+1][i]
            inputArray[j+1][i] = temp
            result.append(colCount(n: count, candy: inputArray))
            result.append(rowCount(n: count, candy: inputArray))
            temp = inputArray[j][i]
            inputArray[j][i] = inputArray[j+1][i]
            inputArray[j+1][i] = temp
        }
    }
    
    print(result.max()!)
}

func colCount(n: Int, candy: [Array<Character>]) -> Int {
    var result = -1
    
    for i in 0..<n {
        var count = 1
        
        for j in 0..<n-1 {
            if candy[i][j] == candy[i][j+1] {
                count += 1
            } else {
                result = max(result, count)
                count = 1
            }
        }
        
        result = max(result, count)
    }
    
    return result
}

func rowCount(n: Int, candy: [Array<Character>]) -> Int {
    var result = -1
    
    for i in 0..<n {
        var count = 1
        
        for j in 0..<n-1 {
            if candy[j][i] == candy[j+1][i] {
                count += 1
            } else {
                result = max(result, count)
                count = 1
            }
        }
        
        result = max(result, count)
    }
    
    return result
}
