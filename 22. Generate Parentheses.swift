class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        guard n > 0 else { return [""] }
        
        var map: [Int:[String]] = [:], result: [String] = []
        if let parentheses = map[n] { return parentheses }
        
        for i in 0..<n {
            for l in generateParenthesis(i) {
                for r in generateParenthesis(n - 1 - i) {
                    result.append("(" + l + ")" + r)
                }
            }
        }
        return result
    }
}
