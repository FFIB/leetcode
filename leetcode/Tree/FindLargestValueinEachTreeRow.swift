//
//  FindLargestValueinEachTreeRow.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func largestValues(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        operation(root, depth: 0, maxs: &res)
        return res
    }
    
    func operation(_ root: TreeNode?, depth: Int, maxs: inout [Int]) {
        guard let tree = root else {
            return
        }
        if depth >= maxs.count {
            maxs.append(tree.val)
        }else {
            maxs[depth] = max(maxs[depth], tree.val)
        }
        operation(tree.left, depth: depth + 1, maxs: &maxs)
        operation(tree.right, depth: depth + 1, maxs: &maxs)
    }
}
