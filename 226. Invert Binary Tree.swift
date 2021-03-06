
//Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
 
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        //if there is no node return nil:
        guard let root = root else { return nil }
        
        let leftNode = invertTree(root.left)
        let rightNode = invertTree(root.right)
        
        root.left = rightNode
        root.right = leftNode
        
        return root
    }
}
