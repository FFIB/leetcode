//
//  SameTree.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class SameTree {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }else if ((p == nil && q != nil) || (p != nil && q == nil)){
            return false
        }else {
            if p?.val == q?.val {
                return isSameTree(p!.left, q!.left) && isSameTree(p!.right, q!.right)
            }else {
                return false
            }
        }
    }
}
