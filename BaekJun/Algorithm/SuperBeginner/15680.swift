// N = 0일 경우: 연세대학교의 영문명을 출력한다.
// N = 1일 경우: 연세대학교의 슬로건을 출력한다.

import Foundation

let s:String! = readLine()
let num = Int(s)

if num == 1 {
    print("Leading the Way to the Future")
}
else if num == 0 {
    print("YONSEI")
}
