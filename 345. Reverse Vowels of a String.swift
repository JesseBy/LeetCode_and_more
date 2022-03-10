let s = "hello" //"holle"
//let s = "leetcode" //"leotcede"

class Solution {
    func reverseVowels(_ s: String) -> String {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        
        var sArray = Array(s)
        var left = 0
        var right = sArray.count - 1
        while left < right {
            
            if vowels.contains(sArray[left]) && vowels.contains(sArray[right]) {
                sArray.swapAt(left, right)
                left += 1
                right -= 1
            } else if vowels.contains(sArray[left]) {
                right -= 1
            } else {
                left += 1
            }
            
        }
        
        print(String(sArray))
        return String(sArray)
    }
}

Solution().reverseVowels(s)
    //.lowercased() is not efficiently
