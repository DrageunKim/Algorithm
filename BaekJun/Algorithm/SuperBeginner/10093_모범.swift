//두 양의 정수가 주어졌을 때, 두 수 사이에 있는 정수를 모두 출력하는 프로그램을 작성하시오.

import Foundation

let num = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
var arr = [String]()
for i in num[0]..<num[1] {
    if i == num[0] {
        continue
    }
    arr += [String(i)]
}
print(arr.count)
if !arr.isEmpty {
    print(arr.joined(separator: " "))
}

// 모법답안
//let num = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
//var arr = [String]()
//for i in num[0]..<num[1] {
//    if i == num[0] {
//        continue
//    }
//    arr += [String(i)]
//}
//print(arr.count)
//if !arr.isEmpty {
//    print(arr.joined(separator: " "))
//}
