let nums = [-1, 0, 3, 5, 9, 12, 135], target = 9 //4

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard !nums.isEmpty else { return -1 }

        var leftIndex = 0
        var rightIndex = nums.count - 1

        while leftIndex <= rightIndex {
            let middleIndex = (leftIndex + rightIndex) / 2

            if target == nums[middleIndex] { return middleIndex }

            if target > nums[middleIndex] {
                leftIndex = middleIndex + 1
            } else {
                rightIndex = middleIndex - 1
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
