//
//  FindBottomLeftTreeValue.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        var res:(depth: Int, value: Int) = (0, 0)
        return findOperation(root, depth: 1, res: &res)
    }
    func findOperation(_ root: TreeNode?, depth: Int, res: inout (depth: Int, value: Int)) -> Int{
        if res.depth < depth {
            res.value = (root?.val)!
            res.depth = depth
        }
        if root?.left != nil {
            let _ = findOperation(root?.left, depth: depth + 1, res: &res)
        }
        if root?.right != nil {
            let _ = findOperation(root?.right, depth: depth + 1, res: &res)
        }
        return res.value
    }
}
