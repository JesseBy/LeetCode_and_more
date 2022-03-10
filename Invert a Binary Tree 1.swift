/*
 input:
 -----4
 ---/---\
 ---2----7
 --/-\--/-\
 -1--3--6--9-
 output:
 -----4
 ---/---\
 ---7----2
 --/-\--/-\
 -9--6--3--1-
 */

import Foundation

final class TreeNode {
    let val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(val: Int) {
        self.val = val
        left = nil
        right = nil
    }
}

final class InvertBinaryTree {
    static func invert(_ node: TreeNode?) -> TreeNode? {
        guard let rootNode = node else {return nil}
        
        //recurcively swap left and right
        let leftSideNode = invert(rootNode.left)
        let rightSideNode = invert(rootNode.right)
        
        rootNode.left = rightSideNode
        rootNode.right = leftSideNode
        
        return rootNode
    }
}

var rootNode = TreeNode(val: 4)

rootNode.left = TreeNode(val: 2)
rootNode.left?.left = TreeNode(val: 1)
rootNode.left?.right = TreeNode(val: 3)

rootNode.right = TreeNode(val: 7)
rootNode.right?.left = TreeNode(val: 6)
rootNode.right?.right = TreeNode(val: 9)

let answer = InvertBinaryTree.invert(rootNode)!
print("rootNode: \(answer.val)")

print("rootNode left: \(answer.left!.val)")
print("rootNode left left: \(answer.left!.left!.val)")
print("rootNode left right: \(answer.left!.right!.val)")

print("rootNode right: \(answer.right!.val)")
print("rootNode right left: \(answer.right!.left!.val)")
print("rootNode right right: \(answer.right!.right!.val)")
