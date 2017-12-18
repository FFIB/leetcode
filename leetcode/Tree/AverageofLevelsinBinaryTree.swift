//
//  AverageofLevelsinBinaryTree.swift
//  leetcode
//
//  Created by FFIB on 2017/12/18.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//637. Average of Levels in Binary Tree
/*
 Given a non-empty binary tree, return the average value of the nodes on each level in the form of an array.
 Example 1:
 Input:
 3
 / \
 9  20
 /  \
 15   7
 Output: [3, 14.5, 11]
 Explanation:
 The average value of nodes on level 0 is 3,  on level 1 is 14.5, and on level 2 is 11. Hence return [3, 14.5, 11].
 Note:
 The range of node's value is in the range of 32-bit signed integer.
 */

extension Solution {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        guard let tree = root else { return [] }
        var ans = [Double]()
        var queue = [tree]
        while !queue.isEmpty {
            var sum = 0
            var tmp = [TreeNode]()
            for tree in queue {
                sum += tree.val
                if let left = tree.left { tmp.append(left) }
                if let right = tree.right { tmp.append(right) }
            }
            ans.append(Double(sum) / Double(queue.count))
            queue = tmp
        }
        return ans
    }
}
