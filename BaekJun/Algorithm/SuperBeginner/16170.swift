
import Foundation

var todayYear = DateFormatter()
var todayMonth = DateFormatter()
var todayDay = DateFormatter()
todayYear.dateFormat = "yyyy"
todayMonth.dateFormat = "MM"
todayDay.dateFormat = "dd"

print(todayYear.string(from: Date()))
print(todayMonth.string(from: Date()))
print(todayDay.string(from: Date()))
