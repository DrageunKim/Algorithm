
import Foundation

let num = readLine()!.split(separator: " ").map{Int($0)!}
if (num[0] == num[1]) {
    print("1")
}
else {
    print("0")
}
