//두 양의 정수가 주어졌을 때, 두 수 사이에 있는 정수를 모두 출력하는 프로그램을 작성하시오.

import Foundation

let s:String! = readLine()
let input = s.split(separator: " ")

if input.count == 2 {
    var first:Int = Int(input[0])!
    var second:Int = Int(input[1])!
    var num:Int = 0

    if (first+1 < second) {
        num = second - first
        print(num-1)
        while first < second - 1 {
            if first < second - 2 {
                print(first+1, terminator: " ")
                first += 1
            }
            else if first == second - 2 {
                print(first + 1)
                first += 1
            }
        }
    }
    else if (first > second + 1){
        num = first - second
        print(num-1)
        while second < first - 1 {
            if second < first - 2 {
                print(second+1, terminator: " ")
                second += 1
            }
            else if second == first - 2 {
                print(second + 1)
                second += 1
            }
        }
    }
    else {
        print("0")
        print("")
    }
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
