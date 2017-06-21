//
//  MaximumDepthofBinaryTree.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class MaximumDepthofBinaryTree {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil{
            return 0
        }
        let left = maxDepth(root?.left)
        let right = maxDepth(root?.right)
        return left > right ? left + 1 : right + 1
    }
}
