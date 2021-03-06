//
//  BinaryTreeTilt.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//563. Binary Tree Tilt
/*
 Given a binary tree, return the tilt of the whole tree.
 
 The tilt of a tree node is defined as the absolute difference between the sum of all left subtree node values and the sum of all right subtree node values. Null node has tilt 0.
 
 The tilt of the whole tree is defined as the sum of all nodes' tilt.
 
 Example:
 Input:
 1
 /   \
 2     3
 Output: 1
 Explanation:
 Tilt of node 2 : 0
 Tilt of node 3 : 0
 Tilt of node 1 : |2-3| = 1
 Tilt of binary tree : 0 + 0 + 1 = 1
 Note:
 
 The sum of node values in any subtree won't exceed the range of 32-bit integer.
 All the tilt values won't exceed the range of 32-bit integer.
 */
extension Solution {
    func findTilt(_ root: TreeNode?) -> Int {
        var res = 0
        func subTree(_ root: TreeNode?) -> Int {
            guard let tree = root else {
                return 0
            }
            let lsum = subTree(tree.left)
            let rsum = subTree(tree.right)
            res += abs(lsum - rsum)
            return tree.val + lsum + rsum
        }
        let _ = subTree(root)
        return res
    }
}
