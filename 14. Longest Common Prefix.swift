let strs = ["flower","flow","flight", "dog"]
//let strs = ["dog","racecar","car"]

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        var commonPrefix = strs[0]
        
        for word in strs {
            while !word.hasPrefix(commonPrefix) {
                commonPrefix = String(commonPrefix.dropLast())
                print(commonPrefix)
            }
        }
        return commonPrefix
    }
}

let solution = Solution()
solution.longestCommonPrefix(strs)




//let word1 = "word"
//var prefix1 = "word"
//
//while !word1.hasPrefix(prefix1) {
//    prefix1 = String(prefix1.dropFirst())
//    print(prefix1)
//}
//
//if 5 != 5 {
//    print("5 == 5")
//} else {
//    print("5 != 5")
//}
