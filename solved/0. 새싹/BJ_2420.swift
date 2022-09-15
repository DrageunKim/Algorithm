sum()

func sum() {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    if input[0] < input[1] {
        print(input[1]-input[0])
    } else {
        print(input[0]-input[1])
    }
}
