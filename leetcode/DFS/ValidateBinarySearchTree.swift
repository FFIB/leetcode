//
//  ValidateBinarySearchTree.swift
//  leetcode
//
//  Created by FFIB on 2018/1/4.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//98. Validate Binary Search Tree
/*
 Given a binary tree, determine if it is a valid binary search tree (BST).
 
 Assume a BST is defined as follows:
 
 The left subtree of a node contains only nodes with keys less than the node's key.
 The right subtree of a node contains only nodes with keys greater than the node's key.
 Both the left and right subtrees must also be binary search trees.
 Example 1:
 2
 / \
 1   3
 Binary tree [2,1,3], return true.
 Example 2:
 1
 / \
 2   3
 Binary tree [1,2,3], return false.
 */
extension Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        
        guard let tree = root else { return true }
        
        var ans = true
        var rootVal = tree.val
        
        func dfs(_ t: TreeNode, min: Int, max: Int) {
            
            if let left = t.left {
                if left.val >= t.val || left.val <= min || left.val >= max {
                    ans = false
                    return
                }
                dfs(left, min: min, max: t.val)
            }
            
            if let right = t.right {
                if right.val <= t.val || right.val <= min || right.val >= max {
                    ans = false
                    return
                }
                dfs(right, min: t.val, max: max)
            }
        }
        
        dfs(tree, min: Int.min, max: Int.max)
        return ans
    }
}
