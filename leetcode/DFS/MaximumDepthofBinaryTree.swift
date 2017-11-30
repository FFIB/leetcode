//
//  MaximumDepthofBinaryTree.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//104. Maximum Depth of Binary Tree
/*
 Given a binary tree, find its maximum depth.
 
 The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
 */
extension Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil{
            return 0
        }
        let left = maxDepth(root?.left)
        let right = maxDepth(root?.right)
        return left > right ? left + 1 : right + 1
    }
}
