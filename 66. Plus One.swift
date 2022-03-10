//let digits = [4,3,2,1]
let digits = [99, 98]

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        for i in (0..<result.count).reversed() {
            if result[i] != 9 {
                result[i] = result[i]+1
                print(result)
                return result
            } else {
                result[i] = 0
            }
        }
        if result.first == 0 {
            result.insert(1, at: 0)
        }
        print(result)
        return result
    }
}


    //this way works only for simple numbers, not for double:
//class Solution {
//    func plusOne(_ digits: [Int]) -> [Int] {
//
//        var digits2 = digits
//        var number = ""
//
//        if digits2.isEmpty { return [0]}
//
//        for i in digits2 {
//            number += String(i)
//        }
//        print(number)
//
//        var number2 = Int(number)
//        print(number2)
//        number2! += 1
//        print(number2)
//
//        var str = String(number2!)
//        print(str)
//
//        let ch = Array(str)
//        print(ch)
//
//        digits2.removeAll()
//
//        for i in ch {
//            if let intValue = i.wholeNumberValue {
//                digits2.append(intValue)
//            }
//        }
//
//        print(digits2)
//        return digits2
//    }
//}



Solution().plusOne(digits)
