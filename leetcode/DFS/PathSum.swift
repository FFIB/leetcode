//
//  PathSum.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//112. Path Sum
/*
 Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.
 
 For example:
 Given the below binary tree and sum = 22,
 5
 / \
 4   8
 /   / \
 11  13  4
 /  \      \
 7    2      1
 return true, as there exist a root-to-leaf path 5->4->11->2 which sum is 22.
 */
extension Solution {
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard root != nil else {
            return false
        }
        if root?.left == nil && root?.right == nil {
            if root?.val == sum {
                return true
            }else {
                return false
            }
        }else {
            return hasPathSum(root?.left, sum - (root?.val ?? 0)) || hasPathSum(root?.right, sum - (root?.val ?? 0))
        }
    }
}
