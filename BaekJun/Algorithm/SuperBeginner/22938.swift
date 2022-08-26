
import Foundation

let o1 = readLine()!.split(separator: " ").map{Double($0)!}
let o2 = readLine()!.split(separator: " ").map{Double($0)!}

if ((o1[0]-o2[0])*(o1[0]-o2[0]))+((o1[1]-o2[1])*(o1[1]-o2[1])) < ((o1[2]+o2[2])*(o1[2]+o2[2])) {
    print("YES")
}
else {
    print("NO")
}
