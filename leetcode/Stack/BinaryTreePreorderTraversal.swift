//
//  BinaryTreePreorderTraversal.swift
//  leetcode
//
//  Created by FFIB on 2017/12/27.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//144. Binary Tree Preorder Traversal
/*
 Given a binary tree, return the preorder traversal of its nodes' values.
 
 For example:
 Given binary tree [1,null,2,3],
 1
 \
 2
 /
 3
 return [1,2,3].
 
 Note: Recursive solution is trivial, could you do it iteratively?
 */
extension Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var stack = [root]
        var ans = [Int]()
        while !stack.isEmpty {
            let tree = stack.removeLast()
            ans.append(tree.val)
            
            if let right = tree.right {
                stack.append(right)
            }
            if let left = tree.left {
                stack.append(left)
            }
        }
        return ans
    }
}
