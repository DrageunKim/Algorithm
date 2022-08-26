
import Foundation

let num = readLine()!.split(separator: " ")
let hp:Double = Double(num[0])!
let per:Double = Double(num[1])!
if (hp-(hp*(per/100.0)) >= 100.0) {
    print("0")
}
else {
    print("1")
}
