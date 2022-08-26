//세 정수 A, B, C가 주어진다. 이때, 두 번째로 큰 정수를 출력하는 프로그램을 작성하시오.

import Foundation

let s:String! = readLine()
var array = s.split(separator: " ")
var num:Array<Int> = []
var num0 = Int(array[0])!
var num1 = Int(array[1])!
var num2 = Int(array[2])!
num.append(num0)
num.append(num1)
num.append(num2)
num.sort()
print(num[1])
