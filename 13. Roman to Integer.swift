let s = "XXXIV"

class Solution {
    func romanToInt(_ s: String) -> Int {
        let array: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        let sArray = Array(s)
        print(sArray)
        var sum: Int = 0
        var previousValue: Int = 0
        
        for character in sArray {
            if let value = array[character] {
                if value <= previousValue {
                    print(value)
                    sum += value
                } else {
                    print(value)
                    sum += value - 2 * previousValue
                }
                previousValue = value
            }
        }
        
        print(sum)
        return sum
    }
}

//class Solution {
//
//    private let dict: [Character:Int] = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
//
//    func romanToInt(_ s: String) -> Int {
//        var prev = 0, out = 0
//        for i in s {
//            let val = dict[i] ?? 0
//            out += val <= prev ? prev : -prev
//            prev = val
//        }
//        out += prev
//        print(out)
//        return out
//    }
//}

let solution = Solution()
solution.romanToInt(s)
