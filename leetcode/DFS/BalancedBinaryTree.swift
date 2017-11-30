//
//  BalancedBinaryTree.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//110. Balanced Binary Tree
/*
 Given a binary tree, determine if it is height-balanced.
 
 For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.
 */
extension Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        return abs(getDepth(root: root?.right) - getDepth(root: root?.left)) < 2 && isBalanced(root?.left) && isBalanced(root?.right)
    }
    
    func getDepth(root: TreeNode?) ->Int {
        if root == nil {
            return 0
        }
        return 1 + max(getDepth(root: root?.left), getDepth(root: root?.right))
    }
}
