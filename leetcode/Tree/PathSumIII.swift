//
//  PathSumIII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class PathSumIII {
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        guard let tree = root else {
            return 0
        }
        var res = 0
        res = pathOperation(tree, sum)
        res += pathSum(tree.left, sum)
        res += pathSum(tree.right, sum)
        return res
    }
    func pathOperation(_ root: TreeNode?, _ sum: Int) -> Int {
        guard let tree = root else {
            return 0
        }
        var res = 0
        res = sum == tree.val ? 1 : 0
        res += pathOperation(tree.left, sum - tree.val)
        res += pathOperation(tree.right, sum - tree.val)
        return res
    }
}
