//두 양의 정수가 주어졌을 때, 두 수 사이에 있는 정수를 모두 출력하는 프로그램을 작성하시오.

import Foundation

let num = readLine()!.split(separator: " ").map{Int($0)!}
print ((num[0]*num[1])/2)
