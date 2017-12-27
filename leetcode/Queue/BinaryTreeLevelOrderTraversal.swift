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
        guard let root = root else { return [] }
        var ans = [[Int]]()
        var queue = [(0, root)]
        while !queue.isEmpty {
            let tree = queue.removeFirst()
            if tree.0 >= ans.count {
                ans.append([Int]())
            }
            ans[tree.0].append(tree.1.val)
            if let left = tree.1.left {
                queue.append((tree.0 + 1, left))
            }
            if let right = tree.1.right {
                queue.append((tree.0 + 1, right))
            }
        }
        return ans
    }
}
