// 두 양의 정수가 주어졌을 때, 첫 번째 수가 두 번째 수보다 큰지 구하는 프로그램을 작성하시오.

import Foundation

while true {
    let s:String! = readLine()
    let input = s.split(separator: " ")
    let a = Int(input[0])
    let b = Int(input[1])

    if (a! <= b! && a! != 0 && b! != 0) {
        print("No")
    }
    else if (a! > b!){
        print("Yes")
    }
    else if (a! == 0 && b! == 0) {
        break
    }
}
