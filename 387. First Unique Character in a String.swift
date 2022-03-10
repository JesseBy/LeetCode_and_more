let s = "leetcode" // 0
//let s = "loveleetcode" // 2
//let s = "aabb" // -1

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var t: [Character: Int] = [:]
        
        for ch1 in s {
            t[ch1, default: 0] += 1
        }
        print(t)
        
        var i = 0
        
        for ch2 in s {
            if let value = t[ch2], value == 1 {
                print(i)
                return i
            }
            i += 1
        }
        
        print(-1)
        return -1
    }
}

Solution().firstUniqChar(s)


    //(i + 1..<nums.count)
