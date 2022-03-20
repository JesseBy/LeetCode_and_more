class Solution {
    func trap(_ heights: [Int]) -> Int {
        var remaining = heights[...]
        var level = 0
        var water = 0
        
        while let left = remaining.first, let right = remaining.last {
            let towerLevel = left < right ? remaining.removeFirst() : remaining.removeLast()
            
            if level < towerLevel {
                level = towerLevel
            } else {
                water += level - towerLevel
            }
        }
        
        return water
    }
}
