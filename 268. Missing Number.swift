let nums = [3,0,1] //2


class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        
        for (index, num) in sortedNums.enumerated() {
            if index != num {
                return index
            }
        }
        
        return sortedNums.endIndex
    }
}


// class Solution {
//     func missingNumber(_ nums: [Int]) -> Int {
//         let sortedNums = nums.sorted()

//         for (index, num) in sortedNums.enumerated() where index != num {
//             return index
//         }

//         return sortedNums.endIndex
//     }
// }

Solution().missingNumber(nums)
