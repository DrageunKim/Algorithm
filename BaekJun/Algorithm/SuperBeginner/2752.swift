// 숫자 세 개가 주어졌을 때, 가장 작은 수, 그 다음 수, 가장 큰 수를 출력하는 프로그램을 작성하시오.

import Foundation

let s:String! = readLine()
var num:Array<Int> = []
var input = s.split(separator: " ")

var input0 = Int(input[0])
var input1 = Int(input[1])
var input2 = Int(input[2])

num.append(input0!)
num.append(input1!)
num.append(input2!)
num.sort()
//sorted 사용시 다른 어레이에 sort하여 넣어주는 방식

print("\(num[0]) \(num[1]) \(num[2])")
