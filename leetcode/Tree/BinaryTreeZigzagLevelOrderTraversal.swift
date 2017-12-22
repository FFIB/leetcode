//
//  BinaryTreeZigzagLevelOrderTraversal.swift
//  leetcode
//
//  Created by FFIB on 2017/12/22.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//103. Binary Tree Zigzag Level Order Traversal
/*
 Given a binary tree, return the zigzag level order traversal of its nodes' values. (ie, from left to right, then right to left for the next level and alternate between).
 
 For example:
 Given binary tree [3,9,20,null,null,15,7],
 3
 / \
 9  20
 /  \
 15   7
 return its zigzag level order traversal as:
 [
 [3],
 [20,9],
 [15,7]
 ]
 */
extension Solution {
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let tree = root else {
            return []
        }
        var ans = [[Int]]()
        var queue = [(0, tree)]
        while !queue.isEmpty {
            let t = queue.removeFirst()
            if t.0 >= ans.count {
                ans.append([Int]())
            }
            if t.0 % 2 == 0 {
                ans[t.0].append(t.1.val)
            }else {
                ans[t.0].insert(t.1.val, at: 0)
            }
            if let left = t.1.left {
                queue.append((t.0 + 1, left))
            }
            if let right = t.1.right {
                queue.append((t.0 + 1, right))
            }
        }
        return ans
    }
}
