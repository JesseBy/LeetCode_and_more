var nums = [4, 1, 2, 4, 1, 6, 2]

//way1:
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        
        var set = Set<Int>()
        
        for num in nums {
            if !set.contains(num) {
                set.insert(num)
                print(set)
            } else {
                set.remove(num)
                print(set)
            }
        }
        
        print(set.first!)
        return set.first!
    }
}

//way2:
//class Solution {
//    func singleNumber(_ nums: [Int]) -> Int {
//        var result = 0
//        for number in nums {
//            result ^= number
//        }
//        print(result)
//        return result
//    }
//}


//way3:
// class Solution {
//     func singleNumber(_ nums: [Int]) -> Int {
//     return nums.reduce(0, ^)
//     }
// }

Solution().singleNumber(nums)
