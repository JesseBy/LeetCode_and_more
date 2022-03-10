
var s: [Character] = ["h","e","l","l","o"]

//way1(it works on leetcode, but it's weird here):
class Solution {
    func reverseString(_ s: inout [Character]) {
        print(s.reverse()) //idk
        return s.reverse()
    }
}

//way2:
// class Solution {
//     func reverseString(_ s: inout [Character]) {
//         var ss: [Character] = []
//         for ch in s.reversed() {
//             ss.append(ch)
//         }
//         s = ss
//     }
// }

Solution().reverseString(&s)


