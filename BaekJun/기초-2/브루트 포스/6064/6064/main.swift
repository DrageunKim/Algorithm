//
//  main.swift
//  6064
//
//  Created by yonggeun Kim on 2023/03/15.
//

for _ in 1...Int(readLine()!)! {
    let inputList = readLine()!.split(separator: " ").compactMap { Int($0) }
    let M = inputList[0]
    let N = inputList[1]
    let x = inputList[2]
    let y = inputList[3]
    
    let gcd = M > N ? gcd(M, N) : gcd(N, M)
    let maxYear = (M * N) / gcd
    var isinCal = false
    
    for i in 0..<maxYear / M {
        let xYear = i * M + x
        let yYear = xYear % N == 0 ? N : xYear % N
        
        if yYear == y {
            print(xYear)
            isinCal = true
            break
        }
    }
    
    if !isinCal {
        print(-1)
    }
}
    
private func gcd(_ n: Int, _ m: Int) -> Int {
    return m == 0 ? n : gcd(m, n % m)
}
