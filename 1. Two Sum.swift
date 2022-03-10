import Foundation
//let nums = [2,7,11,15], target = 9
//let nums = [3, 2, 4], target = 6
//let nums = [8, 2, 5, 19, 15, 3, 1], target = 3
//let nums = [3, 3, 3, 3], target = 6
//let numsSorted = nums.sorted()
let nums = [1, 2, 3, 7, 9, 11, 12, 15, 18, 19, 20], target = 26

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var indexArray = [Int]()
        for i in 0..<nums.count {
            for j in (i + 1..<nums.count) {
                if nums[j] + nums[i] == target {
                    indexArray.append(i)
                    indexArray.append(j)
                    print(indexArray)
                    return indexArray
                }
            }
        }
        return indexArray
    }
}
let solution = Solution()
solution.twoSum(nums, target)

//for j in 0..<nums.count where j != i
