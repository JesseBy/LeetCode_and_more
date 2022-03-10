//let n = 2
//let n = 4
let n = 12

//way1:
class Solution {
    func canWinNim(_ n: Int) -> Bool {
        
        if n % 4 != 0 {
            
            print(true)
            return true
        }
        
        print(false)
        return false
    }
}


//way2:
// class Solution {
//     func canWinNim(_ n: Int) -> Bool {

//         return ((n % 4) != 0)
//     }
// }


//way3:
// class Solution {
//     func canWinNim(_ n: Int) -> Bool {

//         if n & 3 == 0 {
//             print(false)
//             return false
//         }

//         print(true)
//         return true
//     }
// }

Solution().canWinNim(n)
