let nums = [-1, 0, 3, 5, 9, 12], target = 9 //4

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard !nums.isEmpty else { return -1 }
        
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let mid = (left + right) / 2
            let midValue = nums[mid]
            
            if midValue == target { return mid }
            
            if target > nums[mid] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return -1
    }
}



//class Solution {
//    func search(_ nums: [Int], _ target: Int) -> Int {
//        //if nums.count == 0 { return -1 }
//        var cc = 0
//
//        for i in nums {
//            if i == target {
//                print(cc)
//                return cc
//            } else {
//                cc += 1
//            }
//        }
//
//        print("-1")
//        return -1
//    }
//}

//Solution().search(nums, target)
print(Solution().search(nums, target))
