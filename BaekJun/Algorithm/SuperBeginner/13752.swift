//두 양의 정수가 주어졌을 때, 두 수 사이에 있는 정수를 모두 출력하는 프로그램을 작성하시오.

import Foundation

let round = Int(readLine()!)
var arr:Array<String> = []

for _ in 0..<round! {
    let num = Int(readLine()!)
    for _ in 0..<num! {
        arr.append("=")
    }
    print(arr.joined(separator: ""))
    arr.removeAll()
}
