//
//  MinimumDepthofBinaryTree.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//111. Minimum Depth of Binary Tree
/*
 Given a binary tree, find its minimum depth.
 
 The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
 */
extension Solution {
    func minDepth(_ root: TreeNode?) -> Int {
        guard let tree = root else {
            return 0
        }
        if tree.left != nil && tree.right != nil {
            return min(minDepth(tree.left), minDepth(tree.right)) + 1
        }
        return max(minDepth(tree.left), minDepth(tree.right)) + 1
    }
}
