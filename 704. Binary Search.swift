//let nums = [-1,0,3,5,9,12], target = 9
let nums = [-1,0,3,5,9,12], target = 2

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        //if nums.count == 0 { return -1 }
        var cc = 0
        
        for i in nums {
            if i == target {
                print(cc)
                return cc
            } else {
                cc += 1
            }
        }
        print("-1")
        return -1
    }
}

Solution().search(nums, target)
