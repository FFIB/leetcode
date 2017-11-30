//
//  PathSumII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//113. Path Sum II
/*
 Given a binary tree and a sum, find all root-to-leaf paths where each path's sum equals the given sum.
 
 For example:
 Given the below binary tree and sum = 22,
 5
 / \
 4   8
 /   / \
 11  13  4
 /  \    / \
 7    2  5   1
 return
 [
 [5,4,11,2],
 [5,8,4,5]
 ]
 */
extension Solution {
    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        var res = [[Int]]()
        var current = [Int]()
        pathOperation(root, sum: sum, current: &current, res: &res)
        return res
    }
    
    func pathOperation(_ root: TreeNode?, sum: Int, current: inout [Int], res: inout [[Int]]) {
        guard root != nil else {
            return
        }
        if root?.left == nil && root?.right == nil && root?.val == sum{
            current.append(root?.val ?? 0)
            res.append(current)
            current.removeLast()
            return
        }else {
            current.append(root?.val ?? 0)
            pathOperation(root?.left, sum: sum - (root?.val ?? 0), current: &current, res: &res)
            pathOperation(root?.right, sum: sum - (root?.val ?? 0), current: &current, res: &res)
            current.removeLast()
        }
    }
}
