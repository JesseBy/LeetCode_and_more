let nums = [2,2,1,1,1,2,2]
//let nums = [3,2, 2,2 ,3]

//way1:
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        let dictionary = Dictionary(nums.map { ($0, 1) }, uniquingKeysWith: +)
        print(dictionary)
        return dictionary.filter { $0.value == dictionary.values.max() }.keys.first!
    }
}

//way2:
// class Solution {
//     func majorityElement(_ nums: [Int]) -> Int {
//         var returnNumber = 0, count = 0

//         for number in nums {
//             if count == 0 {
//                 returnNumber = number
//             }

//             if returnNumber == number {
//                 count += 1
//             } else {
//                 count -= 1
//             }
//         }

//         print(returnNumber)
//         return returnNumber
//     }
// }

Solution().majorityElement(nums)
