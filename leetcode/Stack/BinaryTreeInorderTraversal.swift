//
//  BinaryTreeInorderTraversal.swift
//  leetcode
//
//  Created by FFIB on 2017/12/27.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//94. Binary Tree Inorder Traversal
/*
 Given a binary tree, return the inorder traversal of its nodes' values.
 
 For example:
 Given binary tree [1,null,2,3],
 1
 \
 2
 /
 3
 return [1,3,2].
 
 Note: Recursive solution is trivial, could you do it iteratively?
 */
extension Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var stack = [TreeNode?]()
        var ans = [Int]()
        var tree = root
        while tree != nil || !stack.isEmpty {
            while tree != nil {
                stack.append(tree)
                tree = tree?.left
            }
            tree = stack.removeLast()
            ans.append(tree!.val)
            tree = tree?.right
        }
        return ans
    }
}
