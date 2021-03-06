//
//  MaximumWidthOfBinaryTree.swift
//  leetcode
//
//  Created by FFIB on 2018/1/2.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//662. Maximum Width of Binary Tree
/*
 Given a binary tree, write a function to get the maximum width of the given tree. The width of a tree is the maximum width among all levels. The binary tree has the same structure as a full binary tree, but some nodes are null.
 
 The width of one level is defined as the length between the end-nodes (the leftmost and right most non-null nodes in the level, where the null nodes between the end-nodes are also counted into the length calculation.
 
 Example 1:
 Input:
 
 1
 /   \
 3     2
 / \     \
 5   3     9
 
 Output: 4
 Explanation: The maximum width existing in the third level with the length 4 (5,3,null,9).
 Example 2:
 Input:
 
 1
 /
 3
 / \
 5   3
 
 Output: 2
 Explanation: The maximum width existing in the third level with the length 2 (5,3).
 Example 3:
 Input:
 
 1
 / \
 3   2
 /
 5
 
 Output: 2
 Explanation: The maximum width existing in the second level with the length 2 (3,2).
 Example 4:
 Input:
 
 1
 / \
 3   2
 /     \
 5       9
 /         \
 6           7
 Output: 8
 Explanation:The maximum width existing in the fourth level with the length 8 (6,null,null,null,null,null,null,7).
 
 
 Note: Answer will in the range of 32-bit signed integer.
 */
extension Solution {
    func widthOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var queue = [(0.0, root)]
        var ans = 0.0
        while !queue.isEmpty {
            let width = queue.last!.0 - queue.first!.0 + 1
            ans = max(ans, width)
            
            var tmp = [(Double, TreeNode)]()
            for (i, node) in queue {
                if let left = node.left { tmp.append((i * 2.0, left)) }
                if let right = node.right { tmp.append((i * 2.0 + 1.0, right)) }
            }
            queue = tmp
        }
        return Int(ans)
    }
}


