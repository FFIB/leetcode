//
//  MergeTwoBinaryTrees.swift
//  leetcode
//
//  Created by LISA on 2017/6/29.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        if t1 == nil && t2 == nil {
            return nil
        }
        let val = (t1?.val ?? 0) + (t2?.val ?? 0)
        let newTree = TreeNode(val)
        newTree.left = mergeTrees(t1?.left, t2?.left)
        newTree.right = mergeTrees(t1?.right, t2?.right)
        return newTree
    }
}
