let n = 27
//let n = 0
//let n = 9

class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n > 0 else {
            print(false)
            return false
        }
        
        var n = n
        while n % 3 == 0 {
            n /= 3
        }
        
        print(n == 1)
        return n == 1
    }
}

//way2:
//class Solution {
//    func isPowerOfThree(_ n: Int) -> Bool {
//        if n == 1 { return true }
//
//        if n == 0 || n % 3 != 0 {
//            return false
//        }
//
//        return isPowerOfThree(n / 3)
//    }
//}

//way3:
//class Solution {
//    func isPowerOfThree(_ n: Int) -> Bool {
//        let t = [1,3,9,27,81,243,729,2187,6561,19683,59049,177147,531441,1594323,4782969,14348907,43046721,129140163,387420489,1162261467,3486784401]
//
//        if t.contains(n) {
//            return true
//        }
//
//        return false
//    }
//}

Solution().isPowerOfThree(n)
