//
//  MinimumDepthofBinaryTree.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class MinimumDepthofBinaryTree {
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
