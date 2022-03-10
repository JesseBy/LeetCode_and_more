//var nums = [0,0,1,1,1,2,2,3,3,4]
var nums = [1]

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var index = 0
        var lastNumber = 0
        
        while index < nums.count {
            if nums[index] == lastNumber {
                nums.remove(at: index)
                print(nums)
            } else {
                lastNumber = nums[index]
                index += 1
            }
        }
        
        print(nums)
        print(nums.count)
        return nums.count
    }
}

Solution().removeDuplicates(&nums)
