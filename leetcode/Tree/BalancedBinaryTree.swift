//
//  BalancedBinaryTree.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class BalancedBinaryTree {
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
