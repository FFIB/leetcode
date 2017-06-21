//
//  PathSum.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class PathSum {
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard root != nil else {
            return false
        }
        if root?.left == nil && root?.right == nil {
            if root?.val == sum {
                return true
            }else {
                return false
            }
        }else {
            return hasPathSum(root?.left, sum - (root?.val ?? 0)) || hasPathSum(root?.right, sum - (root?.val ?? 0))
        }
    }
}
