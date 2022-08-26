// n이 주어졌을 때, 1부터 n까지 합을 구하는 프로그램을 작성하시오.

import Foundation

let s:String! = readLine()
var num:Int = Int(s)!
var result:Int = 0

for i in 0...num {
    result += i
}
print(result)
