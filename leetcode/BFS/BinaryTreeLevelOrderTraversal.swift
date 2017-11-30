//
//  BinaryTreeLevelOrderTraversal.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//102. Binary Tree Level Order Traversal
/*
 Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).
 
 For example:
 Given binary tree [3,9,20,null,null,15,7],
 3
 / \
 9  20
 /  \
 15   7
 return its level order traversal as:
 [
 [3],
 [9,20],
 [15,7]
 ]
 */
extension Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        levelOperationI(res: &res, root: root, level: 0)
        return res
    }
    func levelOperationI(res: inout [[Int]], root: TreeNode?, level: Int) {
        guard let tree = root else{
            return
        }
        if level >= res.count {
            res.append([])
        }
        res[level].append(tree.val)
        levelOperationI(res: &res, root: tree.left, level: level + 1)
        levelOperationI(res: &res, root: tree.right, level: level + 1)
    }
}
