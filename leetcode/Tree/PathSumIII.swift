//
//  PathSumIII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//437. Path Sum III
/*
 You are given a binary tree in which each node contains an integer value.
 
 Find the number of paths that sum to a given value.
 
 The path does not need to start or end at the root or a leaf, but it must go downwards (traveling only from parent nodes to child nodes).
 
 The tree has no more than 1,000 nodes and the values are in the range -1,000,000 to 1,000,000.
 
 Example:
 
 root = [10,5,-3,3,2,null,11,3,-2,null,1], sum = 8
 
 10
 /  \
 5   -3
 / \    \
 3   2   11
 / \   \
 3  -2   1
 
 Return 3. The paths that sum to 8 are:
 
 1.  5 -> 3
 2.  5 -> 2 -> 1
 3. -3 -> 11
 */
extension Solution {
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        guard let tree = root else {
            return 0
        }
        var res = 0
        res = pathOperation(tree, sum)
        res += pathSum(tree.left, sum)
        res += pathSum(tree.right, sum)
        return res
    }
    func pathOperation(_ root: TreeNode?, _ sum: Int) -> Int {
        guard let tree = root else {
            return 0
        }
        var res = 0
        res = sum == tree.val ? 1 : 0
        res += pathOperation(tree.left, sum - tree.val)
        res += pathOperation(tree.right, sum - tree.val)
        return res
    }
}
