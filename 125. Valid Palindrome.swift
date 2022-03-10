let s = "A man, a plan, a canal: Panama"
//let s = " "

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        print(s)
        let filterS = s.filter { $0.isNumber || $0.isLetter }.lowercased()
        print(filterS)
        
        print(filterS == String(filterS.reversed()))
        return filterS == String(filterS.reversed())
        
    }
}

Solution().isPalindrome(s)
