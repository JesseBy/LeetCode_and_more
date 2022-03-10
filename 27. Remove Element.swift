//var nums = [3,2,2,3], val = 3
var nums = [0,1,2,2,3,0,4,2], val = 2

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var index = 0
        
        while index < nums.count {
            if nums[index] == val {
                nums.remove(at: index)
                print(nums)
            } else {
                index += 1
            }
        }
        
        print(nums)
        print(nums.count)
        return nums.count
    }
}

Solution().removeElement(&nums, val)
