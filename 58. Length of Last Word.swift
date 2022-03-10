let s = "   fly me   to   the moon  "

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        
        print(s.split(separator: " ").last?.count ?? 0)
        return s.split(separator: " ").last?.count ?? 0
    }
}

Solution().lengthOfLastWord(s)

    //array.reversed()
