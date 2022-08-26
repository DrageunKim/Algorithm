
import Foundation

let round = Int(readLine()!)!
var arr1:Array<String> = []
var arr2:Array<Int> = []
var num:Int = 0
var s:String = ""

for _ in 0..<round {
    let input = readLine()!.split(separator: " ")
    arr1.append(String(input[0]))
    arr2.append(Int(input[1])!)
}
for _ in 0..<arr1.count {
    for i in 0..<arr1.count-1 {
        if arr2[i] > arr2[i+1] {
            num = arr2[i]
            arr2[i] = arr2[i+1]
            arr2[i+1] = num
            s = arr1[i]
            arr1[i] = arr1[i+1]
            arr1[i+1] = s
        }
    }
}
print(arr1[0])
