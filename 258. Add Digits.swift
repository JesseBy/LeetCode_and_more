class Solution {
    func addDigits(_ num: Int) -> Int {
        if num == 0 { return 0 }
        if num % 9 == 0 { return 9 }
        
        return num % 9
    }
}

Solution().addDigits(num)

//I don't understand how it works
