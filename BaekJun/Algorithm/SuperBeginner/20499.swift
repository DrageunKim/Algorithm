
import Foundation

let kda = readLine()!.split(separator: "/").map{Int($0)!}
if (kda[0]+kda[2] < kda[1] || kda[1] == 0) {
    print("hasu")
} else {
    print("gosu")
}
