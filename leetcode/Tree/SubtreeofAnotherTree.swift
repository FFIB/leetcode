//
//  SubtreeofAnotherTree.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class SubtreeofAnotherTree {
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        var res = false
        if s != nil && t != nil {
            if s?.val == t?.val{
                res = isSameTree(s, t)
            }
            if !res {
                res = isSubtree(s?.left, t)
            }
            if !res {
                res = isSubtree(s?.right, t)
            }
        }
        return res
    }
    func isSameTree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        if s == nil, t == nil {
            return true
        }
        guard let root = s, let tree = t, root.val == tree.val else {
            return false
        }
        return isSameTree(root.left, tree.left) && isSameTree(root.right, tree.right)
    }
}
