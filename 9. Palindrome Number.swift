
let x = 121

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        
        let toString = String(x)
        print(toString)
        let reversedX = String(toString.reversed())
        print(reversedX)
        if toString == reversedX {
            print("\(toString) is palindrome for \(reversedX)")
            return true
        }
        print("\(toString) is NOT palindrome for \(reversedX)")
        return false
    }
}

Solution().isPalindrome(x)
