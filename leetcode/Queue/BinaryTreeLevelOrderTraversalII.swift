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
        guard let root = root else { return [] }
        var ans = [[Int]]()
        var queue = [(0, root)]
        while !queue.isEmpty {
            let tree = queue.removeFirst()
            if tree.0 >= ans.count {
                ans.insert([Int](), at: 0)
            }
            ans[ans.count - tree.0 - 1].append(tree.1.val)
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
