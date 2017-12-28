//
//  BinaryTreePostorderTraversal.swift
//  leetcode
//
//  Created by FFIB on 2017/12/27.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//145. Binary Tree Postorder Traversal
/*
 Given a binary tree, return the postorder traversal of its nodes' values.
 
 For example:
 Given binary tree {1,#,2,3},
 1
 \
 2
 /
 3
 return [3,2,1].
 
 Note: Recursive solution is trivial, could you do it iteratively?
 */
extension Solution {
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var stack = [root]
        var pre = root
        var ans = [Int]()
        
        while !stack.isEmpty {
            if let tree = stack.last {
                if (tree.left == nil && tree.right == nil)
                    || (tree.left != nil && tree.left! === pre)
                    || (tree.right != nil && tree.right! === pre) {
                    ans.append(tree.val)
                    stack.removeLast()
                    pre = tree
                }else {
                    if let right = tree.right {
                        stack.append(right)
                    }
                    if let left = tree.left {
                        stack.append(left)
                    }
                }
            }
        }
        return ans
    }
}
