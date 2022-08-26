
import Foundation

let input = Array(readLine()!).map{Int(String($0))!}
var sum1 = input[0] * input[0] * input[0] * input[0] * input[0]
var sum2 = input[1] * input[1] * input[1] * input[1] * input[1]
var sum3 = input[2] * input[2] * input[2] * input[2] * input[2]
var sum4 = input[3] * input[3] * input[3] * input[3] * input[3]
var sum5 = input[4] * input[4] * input[4] * input[4] * input[4]
var sum = sum1 + sum2 + sum3 + sum4 + sum5

print(sum)
