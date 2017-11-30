//
//  BinaryTreeLevelOrderTraversalII.swift
//  leetcode
//
//  Created by FFIB on 2017/11/30.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//107. Binary Tree Level Order Traversal II
/*
 Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).
 
 For example:
 Given binary tree [3,9,20,null,null,15,7],
 3
 / \
 9  20
 /  \
 15   7
 return its bottom-up level order traversal as:
 [
 [15,7],
 [9,20],
 [3]
 ]
 */
extension Solution {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        levelOperationII(res: &res, root: root, level: 0)
        return res
    }
    
    func levelOperationII(res: inout [[Int]], root: TreeNode?, level: Int) {
        guard let tree = root else{
            return
        }
        if level >= res.count {
            res.insert([], at: 0)
        }
        levelOperationII(res: &res, root: tree.left, level: level + 1);
        levelOperationII(res: &res, root: tree.right, level: level + 1);
        res[res.count - level - 1].append(tree.val)
    }
}
