
import Foundation

let num = readLine()!.split(separator: " ").map{Int($0)!}
if (num[0]+num[1]+num[2] >= 100) {
    print("OK")
}
else if (num.min()! == num[0]) {
    print("Soongsil")
}
else if (num.min()! == num[1]) {
    print("Korea")
}
else if (num.min()! == num[2]) {
    print("Hanyang")
}
