//
//  PathSumII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class PathSumII {
    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        var res = [[Int]]()
        var current = [Int]()
        pathOperation(root, sum: sum, current: &current, res: &res)
        return res
    }
    
    func pathOperation(_ root: TreeNode?, sum: Int, current: inout [Int], res: inout [[Int]]) {
        guard root != nil else {
            return
        }
        if root?.left == nil && root?.right == nil && root?.val == sum{
            current.append(root?.val ?? 0)
            res.append(current)
            current.removeLast()
            return
        }else {
            current.append(root?.val ?? 0)
            pathOperation(root?.left, sum: sum - (root?.val ?? 0), current: &current, res: &res)
            pathOperation(root?.right, sum: sum - (root?.val ?? 0), current: &current, res: &res)
            current.removeLast()
        }
    }
}
