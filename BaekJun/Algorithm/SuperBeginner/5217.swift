//1보다 크거나 같고 12보다 작거나 같은 자연수 n이 주어졌을 때, 합이 n이 되는 두 자연수의 쌍을 찾는 프로그램을 작성하시오.
//예를 들어, 5가 주어진 경우 가능한 쌍은 1,4와 2,3이 있다. 두 수는 항상 달라야 한다. 즉, 3,3은 올바른 쌍이 아니다. 또, 첫 번째 수가 두 번째 수보다 작아야 한다.
//출력하는 쌍은 항상 사전순으로 출력해야 한다. 즉, 각 쌍의 작은 수로 비교를 해야 한다. 예를 들어 1,5는 2,4보다 사전순으로 앞선다.
//첫째 줄에 테스트 케이스의 수 (< 100)가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있고, n이 주어진다.

import Foundation

let s:String! = readLine()
var next:Int = Int(s)!
var i:Int = 1
var j:Int = 0
var a:Int = 0
var b:Int = 0
var array_a:Array<String> = []
var array_b:Array<String> = []

while i <= next {
    let input:String! = readLine()
    let num:Int! = Int(input)
    
    for a in 1...6 {
        if (num - a != 0) {
            b = num - a
        }
        if (a < b && b != 0) {
            array_a.append(String(a))
            array_b.append(String(b))
        }
    }
    
    if (array_a.count != 0) {
        print("Pairs for \(num!):", terminator: "")
        for j in 0...array_a.count-1 {
            if (j < array_a.count-1) {
                print(" \(array_a[j]) \(array_b[j])", terminator: ",")
            }
            else if (j == array_a.count-1) {
                print(" \(array_a[j]) \(array_b[j])")
            }
        }
    }
    else {
        print("Pairs for \(num!):")
    }
    
    array_a.removeAll()
    array_b.removeAll()
    i += 1
}
