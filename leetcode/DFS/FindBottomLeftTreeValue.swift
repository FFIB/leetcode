//
//  FindBottomLeftTreeValue.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//513. Find Bottom Left Tree Value
/*
 Given a binary tree, find the leftmost value in the last row of the tree.
 
 Example 1:
 Input:
 
 2
 / \
 1   3
 
 Output:
 1
 Example 2:
 Input:
 
 1
 / \
 2   3
 /   / \
 4   5   6
 /
 7
 
 Output:
 7
 Note: You may assume the tree (i.e., the given root node) is not NULL.
 */
extension Solution {
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        var res:(depth: Int, value: Int) = (0, 0)
        return findOperation(root, depth: 1, res: &res)
    }
    func findOperation(_ root: TreeNode?, depth: Int, res: inout (depth: Int, value: Int)) -> Int{
        if res.depth < depth {
            res.value = (root?.val)!
            res.depth = depth
        }
        if root?.left != nil {
            let _ = findOperation(root?.left, depth: depth + 1, res: &res)
        }
        if root?.right != nil {
            let _ = findOperation(root?.right, depth: depth + 1, res: &res)
        }
        return res.value
    }
}
