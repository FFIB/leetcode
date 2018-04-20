//
//  MinimumDistanceBetweenBSTNodes.swift
//  leetcode
//
//  Created by FFIB on 2018/4/18.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//783. Minimum Distance Between BST Nodes
/*
 Given a Binary Search Tree (BST) with the root node root, return the minimum difference between the values of any two different nodes in the tree.

 Example :

 Input: root = [4,2,6,1,3,null,null]
 Output: 1
 Explanation:
 Note that root is a TreeNode object, not an array.

 The given tree [4,2,6,1,3,null,null] is represented by the following diagram:

 4
 /   \
 2      6
 / \
 1   3

 while the minimum difference in this tree is 1, it occurs between node 1 and node 2, also between node 3 and node 2.
 Note:

 The size of the BST will be between 2 and 100.
 The BST is always valid, each node's value is an integer, and each node's value is different.
 */
extension Solution {
    func minDiffInBST(_ root: TreeNode?) -> Int {
        var pre = -1
        var dist = Int.max

        func minDiff(root: TreeNode?) {
            guard let tree = root else { return }
            if let left = tree.left {
                minDiff(root: left)
            }
            if pre >= 0 {
                dist = min(dist, tree.val - pre)
            }
            pre = tree.val
            if let right = tree.right {
                minDiff(root: right)
            }
        }

        minDiff(root: root)
        return dist
    }
}

